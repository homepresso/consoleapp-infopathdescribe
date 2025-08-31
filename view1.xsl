<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet version="1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2005-10-21T21:12:27" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties" xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment">
	<xsl:output method="html" indent="no"/>
	<xsl:template match="my:expenseReport">
		<html dir="ltr">
			<head>
				<meta http-equiv="Content-Type" content="text/html"></meta>
				<style controlStyle="controlStyle">@media screen 			{ 			BODY{margin-left:21px;background-position:21px 0px;} 			} 		BODY{color:windowtext;background-color:window;layout-grid:none;} 		.xdListItem {display:inline-block;width:100%;vertical-align:text-top;} 		.xdListBox,.xdComboBox{margin:1px;} 		.xdInlinePicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) } 		.xdLinkedPicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) url(#default#urn::controls/Binder) } 		.xdSection{border:1pt solid #FFFFFF;margin:6px 0px 6px 0px;padding:1px 1px 1px 5px;} 		.xdRepeatingSection{border:1pt solid #FFFFFF;margin:6px 0px 6px 0px;padding:1px 1px 1px 5px;} 		.xdMultiSelectList{display:inline-block; border:1pt solid #dcdcdc; padding:1px 1px 1px 5px; text-indent:0; color:windowtext; background-color:window; overflow:auto; behavior: url(#default#DataBindingUI) url(#default#urn::controls/Binder) url(#default#MultiSelectHelper) url(#default#ScrollableRegion);} 		.xdMultiSelectListItem{display:block;white-space:nowrap}		.xdMultiSelectFillIn{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:left;}		.xdBehavior_Formatting {BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting);} 	 .xdBehavior_FormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting);} 	.xdExpressionBox{margin: 1px;padding:1px;word-wrap: break-word;text-overflow: ellipsis;overflow-x:hidden;}.xdBehavior_GhostedText,.xdBehavior_GhostedTextNoBUI{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#TextField) url(#default#GhostedText);}	.xdBehavior_GTFormatting{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_GTFormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_Boolean{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#BooleanHelper);}	.xdBehavior_Select{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#SelectHelper);}	.xdBehavior_ComboBox{position:relative;BEHAVIOR: url(#default#ComboBox);} 	.xdBehavior_ComboBoxTextField{BEHAVIOR: url(#default#ComboBoxTextField);} 	.xdRepeatingTable{BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word;}.xdScrollableRegion{BEHAVIOR: url(#default#ScrollableRegion);} 		.xdMaster{BEHAVIOR: url(#default#MasterHelper);} 		.xdActiveX{margin:1px; BEHAVIOR: url(#default#ActiveX);} 		.xdFileAttachment{display:inline-block;margin:1px;BEHAVIOR:url(#default#urn::xdFileAttachment);} 		.xdPageBreak{display: none;}BODY{margin-right:21px;} 		.xdTextBoxRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:right;} 		.xdRichTextBoxRTL{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:right;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTTextRTL{height:100%;width:100%;margin-left:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButtonRTL{margin-right:-21px;height:18px;width:20px;behavior: url(#default#DTPicker);} 		.xdMultiSelectFillinRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:right;}.xdTextBox{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:left;} 		.xdRichTextBox{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:left;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTPicker{;display:inline;margin:1px;margin-bottom: 2px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-indent:0} 		.xdDTText{height:100%;width:100%;margin-right:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButton{margin-left:-21px;height:18px;width:20px;behavior: url(#default#DTPicker);} 		.xdRepeatingTable TD {VERTICAL-ALIGN: top;}</style>
				<style tableEditor="TableStyleRulesID">TABLE.xdLayout TD {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none
}
TABLE.msoUcTable TD {
	BORDER-RIGHT: 1pt solid; BORDER-TOP: 1pt solid; BORDER-LEFT: 1pt solid; BORDER-BOTTOM: 1pt solid
}
TABLE {
	BEHAVIOR: url (#default#urn::tables/NDTable)
}
</style>
				<style languageStyle="languageStyle">BODY {
	FONT-SIZE: 10pt; FONT-FAMILY: Verdana
}
TABLE {
	FONT-SIZE: 10pt; FONT-FAMILY: Verdana
}
SELECT {
	FONT-SIZE: 10pt; FONT-FAMILY: Verdana
}
.optionalPlaceholder {
	PADDING-LEFT: 20px; FONT-WEIGHT: normal; FONT-SIZE: xx-small; BEHAVIOR: url(#default#xOptional); COLOR: #333333; FONT-STYLE: normal; FONT-FAMILY: Verdana; TEXT-DECORATION: none
}
.langFont {
	FONT-FAMILY: Verdana
}
.defaultInDocUI {
	FONT-SIZE: xx-small; FONT-FAMILY: Verdana
}
.optionalPlaceholder {
	PADDING-RIGHT: 20px
}
</style>
				<style themeStyle="urn:office.microsoft.com:themeBlue">BODY {
	COLOR: black; BACKGROUND-COLOR: white
}
TABLE {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse
}
TD {
	BORDER-LEFT-COLOR: #517dbf; BORDER-BOTTOM-COLOR: #517dbf; BORDER-TOP-COLOR: #517dbf; BORDER-RIGHT-COLOR: #517dbf
}
TH {
	BORDER-LEFT-COLOR: #517dbf; BORDER-BOTTOM-COLOR: #517dbf; COLOR: black; BORDER-TOP-COLOR: #517dbf; BACKGROUND-COLOR: #cbd8eb; BORDER-RIGHT-COLOR: #517dbf
}
.xdTableHeader {
	COLOR: black; BACKGROUND-COLOR: #ebf0f9
}
P {
	MARGIN-TOP: 0px
}
H1 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #1e3c7b
}
H2 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #1e3c7b
}
H3 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #1e3c7b
}
H4 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #1e3c7b
}
H5 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #517dbf
}
H6 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #ebf0f9
}
.primaryVeryDark {
	COLOR: #ebf0f9; BACKGROUND-COLOR: #1e3c7b
}
.primaryDark {
	COLOR: white; BACKGROUND-COLOR: #517dbf
}
.primaryMedium {
	COLOR: black; BACKGROUND-COLOR: #cbd8eb
}
.primaryLight {
	COLOR: black; BACKGROUND-COLOR: #ebf0f9
}
.accentDark {
	COLOR: white; BACKGROUND-COLOR: #517dbf
}
.accentLight {
	COLOR: black; BACKGROUND-COLOR: #ebf0f9
}
</style>
				<style themeStyle="urn:office.microsoft.com:themeBlue">BODY {
	COLOR: black; BACKGROUND-COLOR: white
}
TABLE {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse
}
TD {
	BORDER-LEFT-COLOR: #517dbf; BORDER-BOTTOM-COLOR: #517dbf; BORDER-TOP-COLOR: #517dbf; BORDER-RIGHT-COLOR: #517dbf
}
TH {
	BORDER-LEFT-COLOR: #517dbf; BORDER-BOTTOM-COLOR: #517dbf; COLOR: black; BORDER-TOP-COLOR: #517dbf; BACKGROUND-COLOR: #cbd8eb; BORDER-RIGHT-COLOR: #517dbf
}
.xdTableHeader {
	COLOR: black; BACKGROUND-COLOR: #ebf0f9
}
P {
	MARGIN-TOP: 0px
}
H1 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #1e3c7b
}
H2 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #1e3c7b
}
H3 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #1e3c7b
}
H4 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #1e3c7b
}
H5 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #517dbf
}
H6 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #ebf0f9
}
.primaryVeryDark {
	COLOR: #ebf0f9; BACKGROUND-COLOR: #1e3c7b
}
.primaryDark {
	COLOR: white; BACKGROUND-COLOR: #517dbf
}
.primaryMedium {
	COLOR: black; BACKGROUND-COLOR: #cbd8eb
}
.primaryLight {
	COLOR: black; BACKGROUND-COLOR: #ebf0f9
}
.accentDark {
	COLOR: white; BACKGROUND-COLOR: #517dbf
}
.accentLight {
	COLOR: black; BACKGROUND-COLOR: #ebf0f9
}
</style>
			</head>
			<body style="COLOR: #000000; BACKGROUND-REPEAT: repeat; BACKGROUND-COLOR: #808080" background="IPTemplate_bkgd.gif">
				<span>
					<xsl:attribute name="style">
						<xsl:if test=".">msos-xCollection-group6_63-editing:disabled;</xsl:if>
					</xsl:attribute>
					<div align="center">
						<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 600px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" border="1">
							<colgroup>
								<col style="WIDTH: 600px"/>
							</colgroup>
							<tbody vAlign="top">
								<tr>
									<td style="PADDING-RIGHT: 20px; PADDING-LEFT: 20px; PADDING-BOTTOM: 15px; PADDING-TOP: 15px; BACKGROUND-COLOR: #7a7a7a">
										<div>
											<font face="Arial Narrow" color="#ffcc00" size="4">
												<strong>EXPENSE REPORT</strong>
											</font>
										</div>
									</td>
								</tr>
								<tr style="MIN-HEIGHT: 4px">
									<td style="PADDING-RIGHT: 20px; PADDING-LEFT: 20px; PADDING-BOTTOM: 15px; PADDING-TOP: 15px; BACKGROUND-COLOR: #f2f2f2">
										<div>
											<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 556px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" border="1">
												<colgroup>
													<col style="WIDTH: 123px"/>
													<col style="WIDTH: 20px"/>
													<col style="WIDTH: 123px"/>
													<col style="WIDTH: 20px"/>
													<col style="WIDTH: 123px"/>
													<col style="WIDTH: 20px"/>
													<col style="WIDTH: 127px"/>
												</colgroup>
												<tbody vAlign="top">
													<tr>
														<td>
															<div>
																<font color="#5f5e62" size="1">Report Date:</font>
															</div>
															<div>
																<div class="xdDTPicker" title="Report Date" style="WIDTH: 100%" noWrap="1" xd:CtrlId="CTRL114" xd:xctname="DTPicker"><span class="xdDTText xdBehavior_FormattingNoBUI" hideFocus="1" contentEditable="true" xd:xctname="DTPicker_DTText" tabIndex="0" xd:binding="my:reportDate" xd:boundProp="xd:num" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:innerCtrl="_DTText">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="my:reportDate"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(my:reportDate,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="my:reportDate"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																	<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="-1">
																		<img src="res://infopath.exe/calendar.gif"/>
																	</button>
																</div>
															</div>
														</td>
														<td>
															<div>
																<font size="1"/> </div>
														</td>
														<td>
															<div>
																<font size="1">
																	<font color="#5f5e62">Expense Code:</font>
																</font>
															</div>
															<div><span class="xdTextBox" hideFocus="1" title="Expense Code" contentEditable="true" xd:CtrlId="CTRL115" xd:xctname="PlainText" tabIndex="0" xd:binding="my:expenseCode" style="WIDTH: 100%; WHITE-SPACE: nowrap; WORD-WRAP: normal">
																	<xsl:value-of select="my:expenseCode"/>
																</span>
																<font size="1"/>
															</div>
														</td>
														<td>
															<div>
																<font size="1"/> </div>
														</td>
														<td>
															<div>
																<font color="#5f5e62" size="1">Start Date:</font>
															</div>
															<div><span class="xdTextBox xdBehavior_Formatting" hideFocus="1" title="Start Date" xd:CtrlId="CTRL116" xd:xctname="PlainText" tabIndex="-1" xd:binding="my:startDate" xd:boundProp="xd:num" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:disableEditing="yes" style="WIDTH: 100%; WHITE-SPACE: nowrap; BACKGROUND-COLOR: #f8f8f8; WORD-WRAP: normal">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:startDate"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:startDate,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:startDate"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
																<font size="1"/>
															</div>
														</td>
														<td>
															<div>
																<font size="1"/> </div>
														</td>
														<td>
															<div>
																<font size="1">
																	<font color="#5f5e62">End Date:</font>
																</font>
															</div>
															<div><span class="xdTextBox xdBehavior_Formatting" hideFocus="1" title="End Date" xd:CtrlId="CTRL117" xd:xctname="PlainText" tabIndex="-1" xd:binding="my:endDate" xd:boundProp="xd:num" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:disableEditing="yes" style="WIDTH: 100%; WHITE-SPACE: nowrap; BACKGROUND-COLOR: #f8f8f8; WORD-WRAP: normal">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:endDate"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:endDate,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:endDate"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
													</tr>
													<tr style="MIN-HEIGHT: 16px">
														<td colSpan="7">
															<div>
																<font color="#5f5e62" size="1">Business Purpose:</font>
															</div>
															<div><span class="xdTextBox" hideFocus="1" title="Business Purpose" xd:CtrlId="CTRL118" xd:xctname="PlainText" tabIndex="0" xd:binding="my:purpose" style="WIDTH: 100%">
																	<xsl:value-of select="my:purpose"/>
																</span>
																<font size="1"/>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</td>
								</tr>
								<tr>
									<td style="PADDING-RIGHT: 20px; PADDING-LEFT: 20px; PADDING-BOTTOM: 15px; PADDING-TOP: 15px; BACKGROUND-COLOR: #ffffff">
										<div>
											<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 557px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" border="1">
												<colgroup>
													<col style="WIDTH: 269px"/>
													<col style="WIDTH: 20px"/>
													<col style="WIDTH: 268px"/>
												</colgroup>
												<tbody vAlign="top">
													<tr>
														<td colSpan="3">
															<div>
																<font face="Arial" color="#5f5e62">
																	<strong>Employee Information</strong>
																</font>
															</div>
															<div>
																<img style="WIDTH: 560px; HEIGHT: 3px" height="3" src="70482F6B.gif" width="560"/>
															</div>
														</td>
													</tr>
													<tr style="MIN-HEIGHT: 37px">
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font color="#5f5e62" size="1">Name:</font><span class="xdTextBox" hideFocus="1" title="Employee Name" contentEditable="true" xd:CtrlId="CTRL119" xd:xctname="PlainText" tabIndex="0" xd:binding="my:employee/my:name" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; WORD-WRAP: normal">
																	<xsl:value-of select="my:employee/my:name"/>
																</span>
															</div>
														</td>
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font size="1"/> </div>
														</td>
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font color="#5f5e62" size="1">Title:</font><span class="xdTextBox" hideFocus="1" title="Employee Title" xd:CtrlId="CTRL122" xd:xctname="PlainText" tabIndex="0" xd:binding="my:employee/my:jobTitle" style="FONT-SIZE: x-small; WIDTH: 100%">
																	<xsl:value-of select="my:employee/my:jobTitle"/>
																</span>
															</div>
														</td>
													</tr>
													<tr>
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font color="#5f5e62" size="1">Department:</font><span class="xdTextBox" hideFocus="1" title="Employee Department" xd:CtrlId="CTRL120" xd:xctname="PlainText" tabIndex="0" xd:binding="my:employee/my:department" style="FONT-SIZE: x-small; WIDTH: 100%">
																	<xsl:value-of select="my:employee/my:department"/>
																</span>
															</div>
														</td>
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font size="1"/> </div>
														</td>
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font color="#5f5e62" size="1">ID Number:</font><span class="xdTextBox" hideFocus="1" title="Employee ID Number" contentEditable="true" xd:CtrlId="CTRL123" xd:xctname="PlainText" tabIndex="0" xd:binding="my:employee/my:identificationNumber" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; WORD-WRAP: normal">
																	<xsl:value-of select="my:employee/my:identificationNumber"/>
																</span>
															</div>
														</td>
													</tr>
													<tr style="MIN-HEIGHT: 38px">
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font color="#5f5e62" size="1">E-mail Address:</font><span class="xdTextBox" hideFocus="1" title="Employee E-mail Address" contentEditable="true" xd:CtrlId="CTRL121" xd:xctname="PlainText" tabIndex="0" xd:binding="my:employee/my:emailAddress" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; WORD-WRAP: normal">
																	<xsl:value-of select="my:employee/my:emailAddress"/>
																</span>
															</div>
														</td>
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font size="1"/> </div>
														</td>
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font size="1"/> </div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div> </div>
										<div>
											<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 557px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" border="1">
												<colgroup>
													<col style="WIDTH: 269px"/>
													<col style="WIDTH: 20px"/>
													<col style="WIDTH: 268px"/>
												</colgroup>
												<tbody vAlign="top">
													<tr style="MIN-HEIGHT: 22px">
														<td colSpan="3">
															<div>
																<font face="Arial" color="#5f5e62">
																	<strong>Manager Information</strong>
																</font>
															</div>
															<div>
																<img style="WIDTH: 560px; HEIGHT: 3px" height="3" src="70482F6B.gif" width="560"/>
															</div>
														</td>
													</tr>
													<tr style="MIN-HEIGHT: 37px">
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font color="#5f5e62" size="1">Name:</font><span class="xdTextBox" hideFocus="1" title="Manager Name" contentEditable="true" xd:CtrlId="CTRL124" xd:xctname="PlainText" tabIndex="0" xd:binding="my:manager/my:managerName" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; WORD-WRAP: normal">
																	<xsl:value-of select="my:manager/my:managerName"/>
																</span>
															</div>
														</td>
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font size="1"/> </div>
														</td>
														<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<font color="#5f5e62" size="1">E-mail Address:</font><span class="xdTextBox" hideFocus="1" title="Manager E-mail Address" contentEditable="true" xd:CtrlId="CTRL125" xd:xctname="PlainText" tabIndex="0" xd:binding="my:manager/my:managerEmailAddress" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; WORD-WRAP: normal">
																	<xsl:value-of select="my:manager/my:managerEmailAddress"/>
																</span>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div> </div>
										<div>
											<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 557px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" border="1">
												<colgroup>
													<col style="WIDTH: 557px"/>
												</colgroup>
												<tbody vAlign="top">
													<tr>
														<td>
															<div>
																<font face="Arial" color="#5f5e62">
																	<strong>Itemized Expenses</strong>
																</font>
															</div>
															<div>
																<img style="WIDTH: 560px; HEIGHT: 3px" height="3" src="70482F6B.gif" width="560"/>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div>
																<table class="xdRepeatingTable msoUcTable" title="" style="TABLE-LAYOUT: fixed; WIDTH: 553px; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-BOTTOM-STYLE: none" border="1" xd:CtrlId="CTRL243">
																	<colgroup>
																		<col style="WIDTH: 106px"/>
																		<col style="WIDTH: 188px"/>
																		<col style="WIDTH: 137px"/>
																		<col style="WIDTH: 92px"/>
																		<col style="WIDTH: 30px"/>
																	</colgroup>
																	<tbody class="xdTableHeader">
																		<tr style="MIN-HEIGHT: 15px">
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #f2f2f2">
																				<font color="#5f5e62" size="1">Date</font>
																			</td>
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #f2f2f2">
																				<font color="#5f5e62" size="1">Description</font>
																			</td>
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #f2f2f2">
																				<font color="#5f5e62" size="1">Category</font>
																			</td>
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #f2f2f2">
																				<font color="#5f5e62" size="1">Cost</font>
																			</td>
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #f2f2f2">
																				<div>
																					<font size="1"/> </div>
																			</td>
																		</tr>
																	</tbody><tbody xd:xctname="repeatingtable">
																		<xsl:for-each select="my:items/my:item">
																			<tr style="MIN-HEIGHT: 26px">
																				<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #ffffff">
																					<div class="xdDTPicker" title="Itemized Expense Date" style="FONT-SIZE: x-small; WIDTH: 100%" noWrap="1" xd:CtrlId="CTRL244" xd:xctname="DTPicker"><span class="xdDTText xdBehavior_FormattingNoBUI" hideFocus="1" contentEditable="true" xd:xctname="DTPicker_DTText" tabIndex="0" xd:binding="my:date" xd:boundProp="xd:num" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:innerCtrl="_DTText">
																							<xsl:attribute name="xd:num">
																								<xsl:value-of select="my:date"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:date,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:date"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																						<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="-1">
																							<img src="res://infopath.exe/calendar.gif" Linked="true"/>
																						</button>
																					</div>
																				</td>
																				<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #ffffff"><span class="xdTextBox" hideFocus="1" title="Itemized Expense Description" xd:CtrlId="CTRL245" xd:xctname="PlainText" tabIndex="0" xd:binding="my:description" style="FONT-SIZE: x-small; WIDTH: 100%">
																						<xsl:value-of select="my:description"/>
																					</span>
																				</td>
																				<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #ffffff"><select class="xdComboBox xdBehavior_Select" title="Itemized Expense Category" size="1" xd:CtrlId="CTRL246" xd:xctname="dropdown" tabIndex="0" xd:binding="my:category" xd:boundProp="value" style="FONT-SIZE: x-small; WIDTH: 134px">
																						<xsl:attribute name="value">
																							<xsl:value-of select="my:category"/>
																						</xsl:attribute>
																						<option>
																							<xsl:if test="my:category=&quot;&quot;">
																								<xsl:attribute name="selected">selected</xsl:attribute>
																							</xsl:if>
																						</option>
																						<option value="Entertainment">
																							<xsl:if test="my:category=&quot;Entertainment&quot;">
																								<xsl:attribute name="selected">selected</xsl:attribute>
																							</xsl:if>Entertainment</option>
																						<option value="Fees or dues">
																							<xsl:if test="my:category=&quot;Fees or dues&quot;">
																								<xsl:attribute name="selected">selected</xsl:attribute>
																							</xsl:if>Fees or dues</option>
																						<option value="Gifts">
																							<xsl:if test="my:category=&quot;Gifts&quot;">
																								<xsl:attribute name="selected">selected</xsl:attribute>
																							</xsl:if>Gifts</option>
																						<option value="Lodging">
																							<xsl:if test="my:category=&quot;Lodging&quot;">
																								<xsl:attribute name="selected">selected</xsl:attribute>
																							</xsl:if>Lodging</option>
																						<option value="Meals">
																							<xsl:if test="my:category=&quot;Meals&quot;">
																								<xsl:attribute name="selected">selected</xsl:attribute>
																							</xsl:if>Meals</option>
																						<option value="Morale">
																							<xsl:if test="my:category=&quot;Morale&quot;">
																								<xsl:attribute name="selected">selected</xsl:attribute>
																							</xsl:if>Morale</option>
																						<option value="Office supplies">
																							<xsl:if test="my:category=&quot;Office supplies&quot;">
																								<xsl:attribute name="selected">selected</xsl:attribute>
																							</xsl:if>Office supplies</option>
																						<option value="Transportation">
																							<xsl:if test="my:category=&quot;Transportation&quot;">
																								<xsl:attribute name="selected">selected</xsl:attribute>
																							</xsl:if>Transportation</option>
																						<option value="Other">
																							<xsl:if test="my:category=&quot;Other&quot;">
																								<xsl:attribute name="selected">selected</xsl:attribute>
																							</xsl:if>Other</option>
																					</select>
																				</td>
																				<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #ffffff">
																					<div align="right"><span class="xdTextBox xdBehavior_Formatting" hideFocus="1" title="Itemized Expense Cost" contentEditable="true" xd:CtrlId="CTRL247" xd:xctname="PlainText" tabIndex="0" xd:binding="my:amount" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right; WORD-WRAP: normal">
																							<xsl:attribute name="xd:num">
																								<xsl:value-of select="my:amount"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:amount,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:amount"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																				</td>
																				<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #ffffff">
																					<div><input class="langFont" title="Itemized Expense Details" style="FONT-SIZE: xx-small" type="button" value="&gt;&gt;" xd:CtrlId="CTRL248" xd:xctname="Button" tabIndex="0"/>
																					</div>
																				</td>
																			</tr>
																		</xsl:for-each>
																	</tbody>
																	<tbody class="xdTableFooter">
																		<tr style="MIN-HEIGHT: 20px">
																			<td colSpan="3" style="BORDER-RIGHT: #b3b3b3 1pt solid; PADDING-RIGHT: 1px; BORDER-TOP: #b3b3b3 1pt solid; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: middle; BORDER-LEFT: #b3b3b3 1pt solid; PADDING-TOP: 1px; BORDER-BOTTOM: #b3b3b3 1pt solid">
																				<div align="right">
																					<font color="#5f5e62" size="1">
																						<strong>Subtotal</strong>
																					</font>
																				</div>
																			</td>
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; PADDING-RIGHT: 0px; BORDER-TOP: #b3b3b3 1pt solid; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; VERTICAL-ALIGN: middle; BORDER-LEFT: #b3b3b3 1pt solid; PADDING-TOP: 0px; BORDER-BOTTOM: #b3b3b3 1pt solid">
																				<div align="right"><span class="xdTextBox xdBehavior_Formatting" hideFocus="1" title="Subtotal" xd:CtrlId="CTRL249" xd:xctname="PlainText" tabIndex="-1" xd:binding="my:items/my:subTotal" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:disableEditing="yes" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; BACKGROUND-COLOR: #f8f8f8; TEXT-ALIGN: right; WORD-WRAP: normal">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:items/my:subTotal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:items/my:subTotal,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:items/my:subTotal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</div>
																			</td>
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; PADDING-RIGHT: 0px; BORDER-TOP: #b3b3b3 1pt solid; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; VERTICAL-ALIGN: middle; BORDER-LEFT: #b3b3b3 1pt solid; PADDING-TOP: 0px; BORDER-BOTTOM: #b3b3b3 1pt solid">
																				<div> </div>
																			</td>
																		</tr>
																		<tr style="MIN-HEIGHT: 20px">
																			<td colSpan="3" style="BORDER-RIGHT: #b3b3b3 1pt solid; PADDING-RIGHT: 1px; BORDER-TOP: #b3b3b3 1pt solid; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: middle; BORDER-LEFT: #b3b3b3 1pt solid; PADDING-TOP: 1px; BORDER-BOTTOM: #b3b3b3 1pt solid">
																				<div align="right">
																					<font color="#5f5e62" size="1">
																						<strong>Less cash advance</strong>
																					</font>
																				</div>
																			</td>
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; PADDING-RIGHT: 0px; BORDER-TOP: #b3b3b3 1pt solid; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; VERTICAL-ALIGN: middle; BORDER-LEFT: #b3b3b3 1pt solid; PADDING-TOP: 0px; BORDER-BOTTOM: #b3b3b3 1pt solid">
																				<div><span class="xdTextBox xdBehavior_Formatting" hideFocus="1" title="Cash Advance" contentEditable="true" xd:CtrlId="CTRL250" xd:xctname="PlainText" tabIndex="0" xd:binding="my:items/my:cashAdvance" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right; WORD-WRAP: normal">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:items/my:cashAdvance"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:items/my:cashAdvance,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:items/my:cashAdvance"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</div>
																			</td>
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; PADDING-RIGHT: 0px; BORDER-TOP: #b3b3b3 1pt solid; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; VERTICAL-ALIGN: middle; BORDER-LEFT: #b3b3b3 1pt solid; PADDING-TOP: 0px; BORDER-BOTTOM: #b3b3b3 1pt solid">
																				<div> </div>
																			</td>
																		</tr>
																		<tr style="MIN-HEIGHT: 20px">
																			<td colSpan="3" style="BORDER-RIGHT: #b3b3b3 1pt solid; PADDING-RIGHT: 1px; BORDER-TOP: #b3b3b3 1pt solid; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: middle; BORDER-LEFT: #b3b3b3 1pt solid; PADDING-TOP: 1px; BORDER-BOTTOM: #b3b3b3 1pt solid">
																				<div align="right">
																					<font color="#5f5e62" size="1">
																						<strong>Total expenses</strong>
																					</font>
																				</div>
																			</td>
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; PADDING-RIGHT: 0px; BORDER-TOP: #b3b3b3 1pt solid; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; VERTICAL-ALIGN: middle; BORDER-LEFT: #b3b3b3 1pt solid; PADDING-TOP: 0px; BORDER-BOTTOM: #b3b3b3 1pt solid">
																				<div><span class="xdTextBox xdBehavior_Formatting" hideFocus="1" title="Total Expenses" xd:CtrlId="CTRL251" xd:xctname="PlainText" tabIndex="-1" xd:binding="my:items/my:total" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:disableEditing="yes" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; BACKGROUND-COLOR: #f8f8f8; TEXT-ALIGN: right; WORD-WRAP: normal">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:items/my:total"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:items/my:total,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:items/my:total"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</div>
																			</td>
																			<td style="BORDER-RIGHT: #b3b3b3 1pt solid; PADDING-RIGHT: 0px; BORDER-TOP: #b3b3b3 1pt solid; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; VERTICAL-ALIGN: middle; BORDER-LEFT: #b3b3b3 1pt solid; PADDING-TOP: 0px; BORDER-BOTTOM: #b3b3b3 1pt solid">
																				<div> </div>
																			</td>
																		</tr>
																	</tbody>
																</table>
																<div class="optionalPlaceholder" xd:xmlToEdit="item_397" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 553px">Add Expense</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div> </div>
										<div>
											<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 557px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" border="1">
												<colgroup>
													<col style="WIDTH: 557px"/>
												</colgroup>
												<tbody vAlign="top">
													<tr style="MIN-HEIGHT: 22px">
														<td>
															<div>
																<font face="Arial" color="#5f5e62">
																	<strong>Item Details</strong>
																</font>
															</div>
															<div>
																<img style="WIDTH: 560px; HEIGHT: 3px" height="3" src="70482F6B.gif" width="560"/>
															</div>
														</td>
													</tr>
													<tr style="MIN-HEIGHT: 22px">
														<td>
															<div><xsl:apply-templates select="my:items/my:item" mode="_11"/>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div> </div>
										<div/>
										<div/>
										<div>
											<input class="langFont" title="" style="BEHAVIOR: url(#default#ActionButton)" type="button" value="Submit" xd:CtrlId="CTRL113_6" xd:xctname="Button" xd:action="submit" tabIndex="0"/>
										</div>
									</td>
								</tr>
								<tr>
									<td style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; BACKGROUND-COLOR: #ffffff">
										<div>
											<img style="WIDTH: 600px; HEIGHT: 6px" height="6" src="741C3E77.gif" width="600"/>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</span>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="my:item" mode="_11">
		<xsl:if test="not((../my:itemPosition != count(preceding-sibling::*)))">
			<div class="xdRepeatingSection xdRepeating" title="" style="MARGIN-BOTTOM: 6px; WIDTH: 556px" align="left" xd:CtrlId="CTRL276" xd:xctname="RepeatingSection" tabIndex="-1">
				<div>
					<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 530px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" border="1">
						<colgroup>
							<col style="WIDTH: 255px"/>
							<col style="WIDTH: 20px"/>
							<col style="WIDTH: 255px"/>
						</colgroup>
						<tbody vAlign="top">
							<tr style="MIN-HEIGHT: 37px">
								<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
									<div>
										<font color="#5f5e62" size="1">Date:</font><span class="xdTextBox xdBehavior_Formatting" hideFocus="1" title="Date" xd:CtrlId="CTRL277" xd:xctname="PlainText" tabIndex="-1" xd:binding="my:date" xd:boundProp="xd:num" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:disableEditing="yes" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; BACKGROUND-COLOR: #f8f8f8; WORD-WRAP: normal">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="my:date"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(my:date,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="my:date"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</div>
								</td>
								<td>
									<div>
										<font face="Verdana" size="2"/> </div>
								</td>
								<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
									<div>
										<font size="1">
											<font color="#5f5e62">Description:</font><span class="xdTextBox " hideFocus="1" title="Description" xd:CtrlId="CTRL278" xd:xctname="PlainText" tabIndex="-1" xd:binding="my:description" xd:disableEditing="yes" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; BACKGROUND-COLOR: #f8f8f8; WORD-WRAP: normal">
												<xsl:value-of select="my:description"/>
											</span>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 37px">
								<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
									<div>
										<font color="#5f5e62" size="1">Category:</font><span class="xdTextBox" hideFocus="1" title="Category" xd:CtrlId="CTRL279" xd:xctname="PlainText" tabIndex="-1" xd:binding="my:category" xd:disableEditing="yes" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; BACKGROUND-COLOR: #f8f8f8; WORD-WRAP: normal">
											<xsl:value-of select="my:category"/>
										</span>
									</div>
								</td>
								<td>
									<div>
										<font face="Verdana" size="2"/> </div>
								</td>
								<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
									<div>
										<font color="#5f5e62" size="1">Amount:</font><span class="xdTextBox xdBehavior_Formatting" hideFocus="1" title="Amount" xd:CtrlId="CTRL280" xd:xctname="PlainText" tabIndex="-1" xd:binding="my:amount" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:disableEditing="yes" style="FONT-SIZE: x-small; WIDTH: 100%; WHITE-SPACE: nowrap; BACKGROUND-COLOR: #f8f8f8; TEXT-ALIGN: right; WORD-WRAP: normal">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="my:amount"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(my:amount,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="my:amount"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 20px">
								<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
									<div>
										<font color="#5f5e62" size="1">Merchant Name:</font><span class="xdTextBox" hideFocus="1" title="Merchant Name" xd:CtrlId="CTRL281" xd:xctname="PlainText" tabIndex="0" xd:binding="my:merchantName" style="FONT-SIZE: x-small; WIDTH: 100%; BACKGROUND-COLOR: #ffffff">
											<xsl:value-of select="my:merchantName"/>
										</span>
									</div>
								</td>
								<td>
									<div>
										<font face="Verdana" size="2"/> </div>
								</td>
								<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
									<div>
										<font size="1"/> </div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div> </div>
				<div><xsl:apply-templates select="my:entertainmentDetails" mode="_16"/>
				</div>
				<div><xsl:apply-templates select="my:gifts" mode="_13"/>
				</div>
				<div> </div>
				<div>
					<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 542px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" border="1">
						<colgroup>
							<col style="WIDTH: 542px"/>
						</colgroup>
						<tbody vAlign="top">
							<tr>
								<td style="BORDER-RIGHT: #bababa 1pt solid; PADDING-RIGHT: 1px; BORDER-TOP: #bababa 1pt solid; PADDING-LEFT: 15px; PADDING-BOTTOM: 1px; BORDER-LEFT: #bababa 1pt solid; PADDING-TOP: 1px; BORDER-BOTTOM: #bababa 1pt solid; BACKGROUND-COLOR: #7a7a7a">
									<div>
										<font style="FONT-SIZE: 9pt" face="Arial" color="#ffffff">
											<strong>ADDITIONAL INFORMATION</strong>
										</font>
									</div>
								</td>
							</tr>
							<tr>
								<td style="BORDER-RIGHT: #bababa 1pt solid; PADDING-RIGHT: 10px; BORDER-TOP: #bababa 1pt solid; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; BORDER-LEFT: #bababa 1pt solid; PADDING-TOP: 10px; BORDER-BOTTOM: #bababa 1pt solid; BACKGROUND-COLOR: #f8f8f8">
									<div><span class="xdRichTextBox" hideFocus="1" title="" contentEditable="true" xd:CtrlId="CTRL346" xd:xctname="RichText" xd:binding="my:additionalInfo" style="WIDTH: 100%; WHITE-SPACE: normal; HEIGHT: 50px">
											<xsl:copy-of select="my:additionalInfo/node()"/>
										</span>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div> </div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="my:entertainmentDetails" mode="_16">
		<xsl:if test="not((../my:category != &quot;Entertainment&quot;))">
			<div class="xdSection xdRepeating" title="" style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; MARGIN-BOTTOM: 0px; WIDTH: 545px; HEIGHT: 111px" align="left" xd:CtrlId="CTRL353" xd:xctname="Section" tabIndex="-1">
				<div>
					<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 542px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" border="1">
						<colgroup>
							<col style="WIDTH: 542px"/>
						</colgroup>
						<tbody vAlign="top">
							<tr>
								<td style="BORDER-RIGHT: #bababa 1pt solid; PADDING-RIGHT: 1px; BORDER-TOP: #bababa 1pt solid; PADDING-LEFT: 15px; PADDING-BOTTOM: 1px; BORDER-LEFT: #bababa 1pt solid; PADDING-TOP: 1px; BORDER-BOTTOM: #bababa 1pt solid; BACKGROUND-COLOR: #7a7a7a">
									<div>
										<font style="FONT-SIZE: 9pt" face="Arial" color="#ffffff">
											<strong>ENTERTAINMENT DETAILS</strong>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 134px">
								<td style="BORDER-RIGHT: #bababa 1pt solid; PADDING-RIGHT: 10px; BORDER-TOP: #bababa 1pt solid; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; BORDER-LEFT: #bababa 1pt solid; PADDING-TOP: 10px; BORDER-BOTTOM: #bababa 1pt solid; BACKGROUND-COLOR: #f8f8f8">
									<div>
										<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 520px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" width="undefined" border="1">
											<colgroup>
												<col style="WIDTH: 243px"/>
												<col style="WIDTH: 20px"/>
												<col style="WIDTH: 257px"/>
											</colgroup>
											<tbody vAlign="top">
												<tr style="MIN-HEIGHT: 35px">
													<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
														<div>
															<font color="#5f5e62" size="1">Purpose:</font><span class="xdTextBox" hideFocus="1" title="Entertainment Purpose" xd:CtrlId="CTRL354" xd:xctname="PlainText" tabIndex="0" xd:binding="my:entertainmentPurpose" style="FONT-SIZE: x-small; WIDTH: 100%">
																<xsl:value-of select="my:entertainmentPurpose"/>
															</span>
														</div>
													</td>
													<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
														<div>
															<font size="1"/> </div>
													</td>
													<td style="PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
														<div>
															<font color="#5f5e62" size="1">Place:</font><span class="xdTextBox" hideFocus="1" title="Entertainment Place" xd:CtrlId="CTRL355" xd:xctname="PlainText" tabIndex="0" xd:binding="my:entertainmentPlace" style="FONT-SIZE: x-small; WIDTH: 100%">
																<xsl:value-of select="my:entertainmentPlace"/>
															</span>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div> </div>
									<div>
										<table class="xdRepeatingTable msoUcTable" title="" style="TABLE-LAYOUT: fixed; WIDTH: 520px; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-BOTTOM-STYLE: none" border="1" xd:CtrlId="CTRL338">
											<colgroup>
												<col style="WIDTH: 174px"/>
												<col style="WIDTH: 173px"/>
												<col style="WIDTH: 173px"/>
											</colgroup>
											<tbody class="xdTableHeader">
												<tr style="MIN-HEIGHT: 15px">
													<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #f2f2f2">
														<font color="#5f5e62" size="1">Person Name</font>
													</td>
													<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #f2f2f2">
														<font color="#5f5e62" size="1">Person Title</font>
													</td>
													<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #f2f2f2">
														<font color="#5f5e62" size="1">Firm</font>
													</td>
												</tr>
											</tbody><tbody xd:xctname="repeatingtable">
												<xsl:for-each select="my:peopleEntertained/my:personEntertained">
													<tr style="MIN-HEIGHT: 26px">
														<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #ffffff"><span class="xdTextBox" hideFocus="1" title="" xd:CtrlId="CTRL356" xd:xctname="PlainText" tabIndex="0" xd:binding="my:personName" style="WIDTH: 100%">
																<xsl:value-of select="my:personName"/>
															</span>
														</td>
														<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #ffffff"><span class="xdTextBox" hideFocus="1" title="" xd:CtrlId="CTRL357" xd:xctname="PlainText" tabIndex="0" xd:binding="my:personTitle" style="WIDTH: 100%">
																<xsl:value-of select="my:personTitle"/>
															</span>
														</td>
														<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #ffffff"><span class="xdTextBox" hideFocus="1" title="" xd:CtrlId="CTRL358" xd:xctname="PlainText" tabIndex="0" xd:binding="my:Firm" style="WIDTH: 100%">
																<xsl:value-of select="my:Firm"/>
															</span>
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
										</table>
										<div class="optionalPlaceholder" xd:xmlToEdit="personEntertained_468" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 520px">Insert item</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="my:gifts" mode="_13">
		<xsl:if test="not((../my:category != &quot;Gifts&quot;))">
			<div class="xdSection xdRepeating" title="" style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; MARGIN-BOTTOM: 0px; WIDTH: 545px; HEIGHT: 100px" align="left" xd:CtrlId="CTRL359" xd:xctname="Section" tabIndex="-1">
				<div>
					<table class="xdLayout" style="BORDER-RIGHT: medium none; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 542px; BORDER-BOTTOM: medium none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" borderColor="buttontext" border="1">
						<colgroup>
							<col style="WIDTH: 542px"/>
						</colgroup>
						<tbody vAlign="top">
							<tr>
								<td style="BORDER-RIGHT: #bababa 1pt solid; PADDING-RIGHT: 1px; BORDER-TOP: #bababa 1pt solid; PADDING-LEFT: 15px; PADDING-BOTTOM: 1px; BORDER-LEFT: #bababa 1pt solid; PADDING-TOP: 1px; BORDER-BOTTOM: #bababa 1pt solid; BACKGROUND-COLOR: #7a7a7a">
									<div>
										<font style="FONT-SIZE: 9pt" face="Arial" color="#ffffff">
											<strong>GIFT RECIPIENTS</strong>
										</font>
									</div>
								</td>
							</tr>
							<tr>
								<td style="BORDER-RIGHT: #bababa 1pt solid; PADDING-RIGHT: 10px; BORDER-TOP: #bababa 1pt solid; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; BORDER-LEFT: #bababa 1pt solid; PADDING-TOP: 10px; BORDER-BOTTOM: #bababa 1pt solid; BACKGROUND-COLOR: #f8f8f8">
									<div>
										<table class="xdRepeatingTable msoUcTable" title="" style="TABLE-LAYOUT: fixed; WIDTH: 520px; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-BOTTOM-STYLE: none" border="1" xd:CtrlId="CTRL329">
											<colgroup>
												<col style="WIDTH: 260px"/>
												<col style="WIDTH: 260px"/>
											</colgroup>
											<tbody class="xdTableHeader">
												<tr style="MIN-HEIGHT: 15px">
													<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #f2f2f2">
														<font color="#5f5e62" size="1">Recipient Name</font>
													</td>
													<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #f2f2f2">
														<font color="#5f5e62" size="1">Gift Amount</font>
													</td>
												</tr>
											</tbody><tbody xd:xctname="repeatingtable">
												<xsl:for-each select="my:gift">
													<tr>
														<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #ffffff"><span class="xdTextBox" hideFocus="1" title="" xd:CtrlId="CTRL360" xd:xctname="PlainText" tabIndex="0" xd:binding="my:recipientName" style="WIDTH: 100%">
																<xsl:value-of select="my:recipientName"/>
															</span>
														</td>
														<td style="BORDER-RIGHT: #b3b3b3 1pt solid; BORDER-TOP: #b3b3b3 1pt solid; BORDER-LEFT: #b3b3b3 1pt solid; BORDER-BOTTOM: #b3b3b3 1pt solid; BACKGROUND-COLOR: #ffffff"><span class="xdTextBox xdBehavior_Formatting" hideFocus="1" title="" contentEditable="true" xd:CtrlId="CTRL361" xd:xctname="PlainText" tabIndex="0" xd:binding="my:giftAmount" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="WIDTH: 100%">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:giftAmount"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:giftAmount,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:giftAmount"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
										</table>
										<div class="optionalPlaceholder" xd:xmlToEdit="gift_457" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 520px">Insert item</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>