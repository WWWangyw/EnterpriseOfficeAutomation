<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>

<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="menue.ascx" TagName="menue" TagPrefix="uc2" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>新闻中心</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="styles/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="styles/cms.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 5%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellspacing="0" cellpadding="0" width="775" align="center" border="0">
                <tr>
                    <td bgcolor="#ffffff">
                        <uc1:head ID="head2" runat="server" />
                    </td>
                    <td width="1" bgcolor="#ffffff">
                    </td>
                </tr>
            </table>
            <table cellspacing="0" cellpadding="0" width="773" align="center" bgcolor="#ffffff"
                border="0">
                <tr>
                    <td width="1" bgcolor="#ffffff" rowspan="2">
                    </td>
                    <td valign="top" align="center" width="179" bgcolor="#daeae8" height="99">
                        <table border="0" style="width: 98%">
                            <tr>
                                <td valign="middle" style="height: 177px">
                                    <uc2:menue ID="menue_1" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="1" background="Images/xxs.gif" rowspan="2">
                    </td>
                    <td valign="top" align="center" rowspan="2">
                        <table height="43" cellspacing="0" cellpadding="0" background="Images/2ji_gsyw.jpg"
                            border="0" style="width: 598px">
                            <tr>
                                <td width="31">
                                </td>
                                <td width="499" align="left">
                                    <span style="color: #000000"><strong>新闻中心</strong></span>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0" cellpadding="0" width="20%" border="0">
                            <tr>
                                <td height="20">
                                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></td>
                            </tr>
                        </table>
                        <table cellspacing="0" cellpadding="0" width="90%" border="0">
                            <tr>
                                <td class="cmscontent" valign="top">
                                    <div align="left">
                                        <table width="300">
                                                            <tr>
                                                                <td class="auto-style2">
                                                                    <img src="Images/arrow_02.gif" />
                                                                </td>
                                                                <td width="260px" align="left" class="auto-style1">
                                                                     <a class="w12" href="NewContent1.aspx">
                                                                     <span style="color: rgb(0, 0, 0);  font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">关于2022年部分节假日放假安排的通知
</span></td></a>
                                                            </tr>
                                                            </table>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="page">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="bottom" width="179" bgcolor="#daeae8">
                        <table cellspacing="0" cellpadding="0" width="90%" border="0">
                            <tr>
                                <td valign="bottom">
                                    <img height="445" src="Images/left.jpg" width="178"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table cellspacing="0" cellpadding="0" width="775" align="center" border="0">
                <tr>
                    <td width="1" bgcolor="#ffffff">
                    </td>
                    <td bgcolor="#ffffff">
                        <uc3:foot ID="foot1" runat="server" />
                    </td>
                    <td width="1" bgcolor="#ffffff">
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
