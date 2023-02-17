<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>
<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="menue.ascx" TagName="menue" TagPrefix="uc2" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>产品信息</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="styles/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="styles/cms.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 22px;
            width: 178px;
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
            <table cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" border="0">
                <tr>
                    <td width="1" bgcolor="#ffffff" rowspan="2">
                    </td>
                    <td valign="top" align="center" width="179" bgcolor="#daeae8" height="99">
                        <table border="0" style="width: 98%">
                            <tr>
                                <td align="center" style="height: 177px">
                                    <uc2:menue ID="menue" runat="server" />
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
                                    <span style="color: #000000"><strong>产品信息</strong></span>
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
                                <td align="right">
                                    <div class="page">
                                        <table class="auto-style1">
                                            <tr>
                                                <td class="auto-style3">
                                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="96px" ImageUrl="~/Images/cat.gif" OnClick="ImageButton2_Click" Width="144px" />
                                                </td>
                                                <td class="auto-style2">
                                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="96px" ImageUrl="~/Images/zebra.gif" OnClick="ImageButton3_Click" Width="144px" />
                                                </td>
                                            </tr>
                                        </table>
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
