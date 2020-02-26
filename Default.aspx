<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRMThemes.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dynamics CRM Theme Generator</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script type="text/javascript" src="js/jscolor.js"></script>
    <script type="text/javascript" src="js/generator.js"></script>
    <script type="text/javascript" src="js/ga.js"></script>
</head>
<body>
    <table>
        <tr>
            <td><span class="bigtext">
                <img src="images/crmtheme.png" style="vertical-align: middle; padding-right: 10px;" />Dynamics CRM Theme Generator</span>
            </td>
            <td>Created by Guido Preite - <a target="_blank" href="https://www.twitter.com/crmanswers">@crmanswers</a> - <a target="_blank" href="http://www.crmanswers.net">www.crmanswers.net</a></td>

        </tr>

        <tr>
            <td colspan="2">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="tableheader">Preview</td>
            <td class="tableheader">Theme Settings</td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top;">
                <!-- Preview -->
                <table class="preview">
                    <tr>
                        <td class="navbar_hex_preview" style="vertical-align: top; padding-left: 18px; width: 252px; height: 50px;">
                            <img src="images/logo.png" /></td>
                        <td class="navbarshelf_hex_preview" style="width: 52px; height: 50px; text-align: center;">
                            <img src="images/shelf.png" /></td>
                        <td class="navbar_hex_preview" style="width: 116px; font-size: 14px; text-align: center;"><span style="color: #FFFFFF;">Sales</span></td>
                    </tr>
                    <tr>
                        <td class="navbarshelf_hex_preview" colspan="3" style="width: 420px; height: 98px; text-align: left;">
                            <img src="images/shelf2.png" /></td>
                    </tr>
                </table>
                <table class="preview">
                    <tr>
                        <td class="textheader"><span class="navheader_hex_preview">My Work</span></td>
                        <td class="textheader"><span class="navheader_hex_preview">Extensions</span></td>
                    </tr>
                    <tr>
                        <td class="textheader">
                            <img class="uidefaultentity_hex_preview" src="images/defaultentity.png" style="vertical-align: middle;" /><span class="textentity">Dashboards</span></td>
                        <td class="textheader">
                            <img class="uicustomentity_hex_preview" src="images/customentity.png" style="vertical-align: middle;" /><span class="textentity">Custom Entity</span></td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <table class="preview">
                    <tr>
                        <td style="white-space: nowrap; width: 54px; height: 28px;">
                            <img src="images/plus.png" style="vertical-align: middle;" />NEW</td>
                        <td class="uihoverlink_hex_preview" style="white-space: nowrap; width: 54px; height: 28px;">
                            <img src="images/plus.png" style="vertical-align: middle;" />NEW (hover)&nbsp;</td>
                    </tr>
                </table>
                <table class="preview">
                    <tr>
                        <td style="height: 50px;"><span class="viewtitle">Active Accounts</span></td>
                    </tr>
                    <tr>
                        <td style="height: 24px; border-top: 1px solid #cccccc; border-bottom: 1px solid #cccccc; padding-left: 10px; width: 360px;">Account Name</td>
                    </tr>
                    <tr>
                        <td style="height: 28px; padding-left: 10px;"><a href="#" class="uigloballink_hex_preview">A. Datum Corporation</a></td>
                    </tr>
                    <tr>
                        <td class="uiselectedlink_hex_preview" style="height: 28px; padding-left: 10px;"><a href="#" class="uigloballink_hex_preview">A. Datum Corporation (selected)</a></td>
                    </tr>
                    <tr>
                        <td class="uihoverlink_hex_preview" style="height: 28px; padding-left: 10px;"><a href="#" class="uigloballink_hex_preview">A. Datum Corporation (hover)</a></td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <table class="preview">
                    <tr>
                        <td colspan="2" style="height: 50px;"><span class="viewtitle">Opportunity Name</span></td>
                    </tr>
                    <tr>
                        <td class="crmbox uicontrolborder_hex_preview">Est. Close Date</td>
                        <td class="crmbox uicontrolborder_hex_preview uicontrolshade_hex_preview">Est. Close Date (hover)</td>
                    </tr>
                    <tr>
                        <td class="crmbox uicontrolborder_hex_preview"><strong>5/11/2015</strong></td>
                        <td class="crmbox uicontrolborder_hex_preview uicontrolshade_hex_preview"><strong>5/11/2015</strong></td>
                    </tr>
                </table>
                <br />
                <table class="preview">
                    <tr>
                        <td class="uiprocesscontrol_hex_preview" style="height: 21px; color: #FFFFFF;">
                            <img src="images/arrow2.png" style="vertical-align: middle;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qualify (Active)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow1.png" style="vertical-align: middle; float: right;" /></td>
                        <td style="height: 21px; color: #FFFFFF; background-color: #6F6F6F;">
                            <img src="images/arrow2.png" style="vertical-align: middle;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Develop&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow1.png" style="vertical-align: middle; float: right;" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 50px;"><span class="formheader navheader_hex_preview">Summary</span></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td class="crmlabel" style="height: 24px;">Topic <span class="required">*</span></td>
                        <td colspan="2"><span class="crmtextbox">Opportunity Name</span></td>
                    </tr>
                    <tr>
                        <td class="crmlabel" style="height: 24px;">Topic <span class="required">*</span></td>
                        <td colspan="2"><span class="samplehover uicontrolborder_hex_preview uicontrolshade_hex_preview">Opportunity Name (hover)</span></td>
                    </tr>
                    <tr>
                        <td class="crmlabel" style="height: 24px;">Contact</td>
                        <td colspan="2"><span class="crmtextbox"><a href="#" class="uigloballink_hex_preview">Jim Glynn</a></span></td>
                    </tr>
                </table>
                <!-- /Preview -->
            </td>
            <td style="padding-left: 50px; vertical-align: top;">
                <!-- Theme Settings -->
                <form id="form1" runat="server">
                    <table class="settings">
                        <tr>
                            <td colspan="3" class="crmheader">Theme Name</td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Theme Name</td>
                            <td colspan="2">
                                <input class="crmtextbox" id="themename" value="" maxlength="100" runat="server" /></td>
                        </tr>
                        <tr>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="crmheader">Navigation Bar</td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Logo Tooltip</td>
                            <td colspan="2">
                                <input class="crmtextbox" id="logotooltip" value="" maxlength="80" runat="server" /></td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Navigation Bar Color</td>
                            <td>
                                <input class="colorhex" id="navbar_hex" value="" runat="server" /></td>
                            <td>
                                <input id="navbar_color" class="colorholder color {valueElement:'navbar_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Navigation Bar Shelf Color</td>
                            <td>
                                <input class="colorhex" id="navbarshelf_hex" value="" runat="server" /></td>
                            <td>
                                <input id="navbarshelf_color" class="colorholder color {valueElement:'navbarshelf_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Header Color</td>
                            <td>
                                <input class="colorhex" id="navheader_hex" value="" runat="server" /></td>
                            <td>
                                <input id="navheader_color" class="colorholder color {valueElement:'navheader_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                        <tr>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="crmheader">UI Elements</td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Global Link Color</td>
                            <td>
                                <input class="colorhex" id="uigloballink_hex" value="" runat="server" /></td>
                            <td>
                                <input id="uigloballink_color" class="colorholder color {valueElement:'uigloballink_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Selected Link Effect</td>
                            <td>
                                <input class="colorhex" id="uiselectedlink_hex" value="" runat="server" /></td>
                            <td>
                                <input id="uiselectedlink_color" class="colorholder color {valueElement:'uiselectedlink_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Hover Link Effect</td>
                            <td>
                                <input class="colorhex" id="uihoverlink_hex" value="" runat="server" /></td>
                            <td>
                                <input id="uihoverlink_color" class="colorholder color {valueElement:'uihoverlink_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Process Control Color</td>
                            <td>
                                <input class="colorhex" id="uiprocesscontrol_hex" value="" runat="server" /></td>
                            <td>
                                <input id="uiprocesscontrol_color" class="colorholder color {valueElement:'uiprocesscontrol_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Default Entity Color</td>
                            <td>
                                <input class="colorhex" id="uidefaultentity_hex" value="" runat="server" /></td>
                            <td>
                                <input id="uidefaultentity_color" class="colorholder color {valueElement:'uidefaultentity_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Default Custom Entity Color</td>
                            <td>
                                <input class="colorhex" id="uicustomentity_hex" value="" runat="server" /></td>
                            <td>
                                <input id="uicustomentity_color" class="colorholder color {valueElement:'uicustomentity_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Control Shade</td>
                            <td>
                                <input class="colorhex" id="uicontrolshade_hex" value="" runat="server" /></td>
                            <td>
                                <input id="uicontrolshade_color" class="colorholder color {valueElement:'uicontrolshade_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                        <tr>
                            <td class="crmlabel">Control Border</td>
                            <td>
                                <input class="colorhex" id="uicontrolborder_hex" value="" runat="server" /></td>
                            <td>
                                <input id="uicontrolborder_color" class="colorholder color {valueElement:'uicontrolborder_hex',hash:true,pickerPosition:'right',onImmediateChange:'updateInfo(this);'}" /></td>
                        </tr>
                    </table>
                    <br />
                    <input type="button" value="Default CRM 2015 Theme" onclick="BackToDefault()" />&nbsp;<input type="button" value="Default CRM 2016 Theme" onclick="BackToDefault2016()" />
                    <br />
                    <br />
                    <input type="button" value="Random Theme" onclick="GetRandom()" />&nbsp;<asp:Button ID="btnExport" runat="server" Text="Export Theme" OnClick="btnExport_Click" />
                    <br />
                    <br />
                    <a id="linkurl" target="_blank" href=""><strong>Direct Theme Link</strong></a><br />
                    <a id="linkemail" href=""><strong>Send Theme Link by Email</strong></a><br />
                </form>
                <!-- /Theme Settings -->
            </td>
        </tr>
    </table>
</body>
</html>
<script type="text/javascript" src="js/onload.js"></script>
