// Add this enhanced naming method to the SectionAwareParser class

private string GenerateControlName(XElement elem, string label, string binding, string controlType)
{
    // Priority 1: Use explicit name attribute
    var nameAttr = elem.Attribute("name")?.Value;
    if (!string.IsNullOrWhiteSpace(nameAttr))
    {
        return RemoveSpaces(nameAttr).ToUpper();
    }

    // Priority 2: Use title/label if available and meaningful
    if (!string.IsNullOrWhiteSpace(label) && label.Length > 1)
    {
        // Remove trailing colons from labels
        var cleanLabel = label.TrimEnd(':').Trim();
        if (!string.IsNullOrWhiteSpace(cleanLabel))
        {
            return RemoveSpaces(cleanLabel).ToUpper();
        }
    }

    // Priority 3: Extract from binding path
    if (!string.IsNullOrWhiteSpace(binding))
    {
        var parts = binding.Split('/');
        var lastPart = parts.Last();

        // Remove namespace prefix if present
        if (lastPart.Contains(':'))
        {
            lastPart = lastPart.Split(':').Last();
        }

        if (!string.IsNullOrWhiteSpace(lastPart))
        {
            return RemoveSpaces(lastPart).ToUpper();
        }
    }

    // Priority 4: Look for xd:xmlToEdit attribute (common in InfoPath)
    var xmlToEdit = GetAttributeValue(elem, "xmlToEdit");
    if (!string.IsNullOrWhiteSpace(xmlToEdit))
    {
        // Extract meaningful part from xmlToEdit
        var parts = xmlToEdit.Split('_');
        if (parts.Length > 0)
        {
            var meaningfulPart = parts[0];
            if (!string.IsNullOrWhiteSpace(meaningfulPart))
            {
                return RemoveSpaces(meaningfulPart).ToUpper();
            }
        }
    }

    // Priority 5: Use control ID if available
    var ctrlId = GetAttributeValue(elem, "CtrlId");
    if (!string.IsNullOrWhiteSpace(ctrlId))
    {
        return ctrlId.ToUpper();
    }

    // Priority 6: Generate based on control type and position
    return $"{controlType.ToUpper()}_{docIndexCounter}";
}

// Enhanced TryExtractControl method - replace the existing one
private ControlDefinition TryExtractControl(XElement elem)
{
    var elemName = elem.Name.LocalName.ToLower();

    // Skip sections - they're handled separately
    if (IsSection(elem))
        return null;

    // Try to extract label
    if (IsLabelElement(elem))
    {
        var labelText = ExtractLabelText(elem);
        if (!string.IsNullOrWhiteSpace(labelText) && labelText.Length > 1)
        {
            var labelControl = new ControlDefinition
            {
                Name = GenerateControlName(elem, labelText, "", "Label"),
                Type = "Label",
                Label = labelText,
                Binding = "",
                DocIndex = ++docIndexCounter,
                Properties = new Dictionary<string, string>(),
                Controls = new List<ControlDefinition>()
            };

            // Copy the repeating section info if we're in one
            if (repeatingContextStack.Count > 0)
            {
                var currentContext = repeatingContextStack.Peek();
                labelControl.IsInRepeatingSection = true;
                labelControl.RepeatingSectionName = currentContext.DisplayName;
                labelControl.RepeatingSectionBinding = currentContext.Binding;
            }

            return labelControl;
        }
    }

    // Try to extract control with xctname
    var xctAttr = GetAttributeValue(elem, "xctname");
    if (!string.IsNullOrEmpty(xctAttr) &&
        !xctAttr.Equals("ExpressionBox", StringComparison.OrdinalIgnoreCase) &&
        !xctAttr.Equals("Section", StringComparison.OrdinalIgnoreCase) &&
        !xctAttr.Equals("RepeatingSection", StringComparison.OrdinalIgnoreCase) &&
        !xctAttr.Equals("RepeatingTable", StringComparison.OrdinalIgnoreCase))
    {
        return ParseXctControl(elem, xctAttr);
    }

    // Try to extract HTML form control
    if (elemName == "input" || elemName == "select" || elemName == "textarea")
    {
        return ParseHtmlControl(elem);
    }

    // Try to extract ActiveX control
    if (elemName == "object")
    {
        return ParseActiveXControl(elem);
    }

    // Check for controls with xd:binding attribute but no xctname
    var bindingAttr = GetAttributeValue(elem, "binding");
    if (!string.IsNullOrEmpty(bindingAttr))
    {
        return ParseGenericBoundControl(elem);
    }

    return null;
}

// Enhanced ParseXctControl method - replace the existing one
private ControlDefinition ParseXctControl(XElement elem, string xctType)
{
    // Handle GUID-based control types (like PeoplePicker)
    var mappedType = xctType;
    if (xctType.StartsWith("{") && xctType.EndsWith("}"))
    {
        // Check for known GUIDs
        if (xctType.Contains("61e40d31-993d-4777-8fa0-19ca59b6d0bb"))
        {
            mappedType = "PeoplePicker";
        }
        else
        {
            mappedType = "ActiveX-" + xctType;
        }
    }
    else
    {
        mappedType = MapControlType(xctType);
    }

    var control = new ControlDefinition
    {
        Type = mappedType,
        DocIndex = ++docIndexCounter,
        Properties = new Dictionary<string, string>(),
        Controls = new List<ControlDefinition>()
    };

    // Get label and binding first
    control.Label = elem.Attribute("title")?.Value ?? "";
    control.Binding = GetAttributeValue(elem, "binding");

    // Generate a proper name using the enhanced method
    control.Name = GenerateControlName(elem, control.Label, control.Binding, mappedType);

    var ctrlId = GetAttributeValue(elem, "CtrlId");
    if (!string.IsNullOrEmpty(ctrlId))
    {
        if (processedControls.Contains(ctrlId))
            return null;
        processedControls.Add(ctrlId);
        control.Properties["CtrlId"] = ctrlId;
    }

    // Copy attributes
    foreach (var attr in elem.Attributes())
    {
        if (!ShouldSkipAttribute(attr.Name.LocalName))
        {
            control.Properties[attr.Name.LocalName] = attr.Value;
        }
    }

    // Add repeating section info if applicable
    if (repeatingContextStack.Count > 0)
    {
        var currentContext = repeatingContextStack.Peek();
        control.IsInRepeatingSection = true;
        control.RepeatingSectionName = currentContext.DisplayName;
        control.RepeatingSectionBinding = currentContext.Binding;

        if (repeatingContextStack.Count > 1)
        {
            var parentContexts = repeatingContextStack.ToArray().Skip(1);
            control.Properties["ParentRepeatingSections"] = string.Join("|",
                parentContexts.Select(c => c.DisplayName));
        }
    }

    return control;
}

// Enhanced ParseHtmlControl method - replace the existing one
private ControlDefinition ParseHtmlControl(XElement elem)
{
    var control = new ControlDefinition
    {
        DocIndex = ++docIndexCounter,
        Properties = new Dictionary<string, string>(),
        Controls = new List<ControlDefinition>()
    };

    // Check if this HTML element has an xctname attribute
    var xctname = GetAttributeValue(elem, "xctname");
    if (!string.IsNullOrEmpty(xctname))
    {
        // Handle GUID-based control types
        if (xctname.StartsWith("{") && xctname.EndsWith("}"))
        {
            if (xctname.Contains("61e40d31-993d-4777-8fa0-19ca59b6d0bb"))
            {
                control.Type = "PeoplePicker";
            }
            else
            {
                control.Type = "ActiveX-" + xctname;
            }
        }
        else
        {
            control.Type = MapControlType(xctname);
        }
    }
    else
    {
        // Determine type from element name if no xctname
        if (elem.Name.LocalName.ToLower() == "select")
        {
            control.Type = "DropDown";
        }
        else if (elem.Name.LocalName.ToLower() == "textarea")
        {
            control.Type = "RichText";
        }
        else if (elem.Name.LocalName.ToLower() == "input")
        {
            var type = elem.Attribute("type")?.Value ?? "text";
            control.Type = MapInputType(type);
        }
    }

    control.Label = elem.Attribute("title")?.Value ?? "";
    control.Binding = GetAttributeValue(elem, "binding");

    // Generate proper name
    control.Name = GenerateControlName(elem, control.Label, control.Binding, control.Type);

    // Check for CtrlId
    var ctrlId = GetAttributeValue(elem, "CtrlId");
    if (!string.IsNullOrEmpty(ctrlId))
    {
        if (processedControls.Contains(ctrlId))
            return null;
        processedControls.Add(ctrlId);
        control.Properties["CtrlId"] = ctrlId;
    }

    // Copy attributes
    foreach (var attr in elem.Attributes())
    {
        if (!ShouldSkipAttribute(attr.Name.LocalName))
        {
            control.Properties[attr.Name.LocalName] = attr.Value;
        }
    }

    // Add repeating section info if applicable
    if (repeatingContextStack.Count > 0)
    {
        var currentContext = repeatingContextStack.Peek();
        control.IsInRepeatingSection = true;
        control.RepeatingSectionName = currentContext.DisplayName;
        control.RepeatingSectionBinding = currentContext.Binding;

        if (repeatingContextStack.Count > 1)
        {
            var parentContexts = repeatingContextStack.ToArray().Skip(1);
            control.Properties["ParentRepeatingSections"] = string.Join("|",
                parentContexts.Select(c => c.DisplayName));
        }
    }

    return control;
}

// Similarly update ParseActiveXControl and ParseGenericBoundControl methods
// to use GenerateControlName and properly set repeating section info

private ControlDefinition ParseActiveXControl(XElement elem)
{
    var control = new ControlDefinition
    {
        DocIndex = ++docIndexCounter,
        Properties = new Dictionary<string, string>(),
        Controls = new List<ControlDefinition>()
    };

    // Check xctname attribute first
    var xctname = GetAttributeValue(elem, "xctname");
    if (!string.IsNullOrEmpty(xctname))
    {
        if (xctname.Contains("61e40d31-993d-4777-8fa0-19ca59b6d0bb"))
        {
            control.Type = "PeoplePicker";
        }
        else if (xctname.StartsWith("{") && xctname.EndsWith("}"))
        {
            control.Type = "ActiveX-" + xctname;
        }
        else
        {
            control.Type = MapControlType(xctname);
        }
    }
    else
    {
        // Fall back to classid
        var classId = elem.Attribute("classid")?.Value ?? "";
        if (classId.Contains("61e40d31-993d-4777-8fa0-19ca59b6d0bb"))
        {
            control.Type = "PeoplePicker";
        }
        else
        {
            control.Type = "ActiveX";
        }
    }

    // Check for duplicates by CtrlId
    var ctrlIdAttr = GetAttributeValue(elem, "CtrlId");
    if (!string.IsNullOrEmpty(ctrlIdAttr))
    {
        if (processedControls.Contains(ctrlIdAttr))
            return null;
        processedControls.Add(ctrlIdAttr);
        control.Properties["CtrlId"] = ctrlIdAttr;
    }

    // Check for CtrlId in params
    var ctrlIdParam = elem.Descendants()
        .FirstOrDefault(e => e.Name.LocalName == "param" &&
                           e.Attribute("name")?.Value == "CtrlId");
    if (ctrlIdParam != null)
    {
        var ctrlId = ctrlIdParam.Attribute("value")?.Value;
        if (!string.IsNullOrEmpty(ctrlId))
        {
            if (processedControls.Contains(ctrlId))
                return null;
            processedControls.Add(ctrlId);
            control.Properties["CtrlId"] = ctrlId;
        }
    }

    control.Binding = GetAttributeValue(elem, "binding");
    control.Label = elem.Attribute("title")?.Value ?? "";

    // Get binding from params if not found
    if (string.IsNullOrEmpty(control.Binding))
    {
        var bindingParam = elem.Descendants()
            .FirstOrDefault(e => e.Name.LocalName == "param" &&
                               e.Attribute("name")?.Value == "binding");
        if (bindingParam != null)
        {
            control.Binding = bindingParam.Attribute("value")?.Value ?? "";
        }
    }

    // Generate proper name
    control.Name = GenerateControlName(elem, control.Label, control.Binding, control.Type);

    // Copy params as properties
    foreach (var param in elem.Descendants().Where(e => e.Name.LocalName == "param"))
    {
        var name = param.Attribute("name")?.Value;
        var value = param.Attribute("value")?.Value;
        if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(value))
        {
            control.Properties[name] = value;
        }
    }

    // Copy object attributes
    foreach (var attr in elem.Attributes())
    {
        if (!ShouldSkipAttribute(attr.Name.LocalName))
        {
            control.Properties[attr.Name.LocalName] = attr.Value;
        }
    }

    // Add repeating section info if applicable
    if (repeatingContextStack.Count > 0)
    {
        var currentContext = repeatingContextStack.Peek();
        control.IsInRepeatingSection = true;
        control.RepeatingSectionName = currentContext.DisplayName;
        control.RepeatingSectionBinding = currentContext.Binding;

        if (repeatingContextStack.Count > 1)
        {
            var parentContexts = repeatingContextStack.ToArray().Skip(1);
            control.Properties["ParentRepeatingSections"] = string.Join("|",
                parentContexts.Select(c => c.DisplayName));
        }
    }

    return control;
}

private ControlDefinition ParseGenericBoundControl(XElement elem)
{
    var control = new ControlDefinition
    {
        DocIndex = ++docIndexCounter,
        Properties = new Dictionary<string, string>(),
        Controls = new List<ControlDefinition>()
    };

    // Try to determine type from element and attributes
    var elemName = elem.Name.LocalName.ToLower();
    var className = elem.Attribute("class")?.Value ?? "";

    // Set type based on class or element name
    if (className.Contains("xdBehavior_Boolean"))
    {
        control.Type = "CheckBox";
    }
    else if (className.Contains("xdTextBox"))
    {
        control.Type = "TextField";
    }
    else if (className.Contains("xdComboBox"))
    {
        control.Type = "DropDown";
    }
    else if (className.Contains("xdDTPicker"))
    {
        control.Type = "DatePicker";
    }
    else if (className.Contains("xdRichTextBox"))
    {
        control.Type = "RichText";
    }
    else
    {
        control.Type = elemName; // Default to element name
    }

    control.Binding = GetAttributeValue(elem, "binding");
    control.Label = elem.Attribute("title")?.Value ?? "";

    // Generate proper name
    control.Name = GenerateControlName(elem, control.Label, control.Binding, control.Type);

    // Check for CtrlId
    var ctrlId = GetAttributeValue(elem, "CtrlId");
    if (!string.IsNullOrEmpty(ctrlId))
    {
        if (processedControls.Contains(ctrlId))
            return null;
        processedControls.Add(ctrlId);
        control.Properties["CtrlId"] = ctrlId;
    }

    // Copy attributes
    foreach (var attr in elem.Attributes())
    {
        if (!ShouldSkipAttribute(attr.Name.LocalName))
        {
            control.Properties[attr.Name.LocalName] = attr.Value;
        }
    }

    // Add repeating section info if applicable
    if (repeatingContextStack.Count > 0)
    {
        var currentContext = repeatingContextStack.Peek();
        control.IsInRepeatingSection = true;
        control.RepeatingSectionName = currentContext.DisplayName;
        control.RepeatingSectionBinding = currentContext.Binding;

        if (repeatingContextStack.Count > 1)
        {
            var parentContexts = repeatingContextStack.ToArray().Skip(1);
            control.Properties["ParentRepeatingSections"] = string.Join("|",
                parentContexts.Select(c => c.DisplayName));
        }
    }

    return control;
}