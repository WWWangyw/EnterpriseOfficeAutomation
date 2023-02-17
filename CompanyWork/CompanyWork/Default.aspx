<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="FirstPage" %>

<!DOCTYPE html>
<%@ Register Src="WebUserControl2.ascx" TagName="WebUserControl2" TagPrefix="uc2" %>
<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc3" %>
<%@ Register Src="search.ascx" TagName="search" TagPrefix="uc4" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>办公自动化</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="styles/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="styles/cms.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            width: 197px;
        }
        .auto-style3 {
            width: 596px;
            margin-left: 154px;
        }
        .auto-style4 {
            width: 100%;
            height: 97px;
        }
        .auto-style5 {
            width: 595px;
        }
        .auto-style6 {
            width: 597px;
            height: 107px;
        }
        .auto-style7 {
            width: 157px;
            height: 100px;
        }
        .auto-style8 {
            width: 155px;
            height: 100px;
        }
        .auto-style9 {
            height: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellspacing="0" cellpadding="0" width="775" align="center" border="0">
                <tr>
                    <td bgcolor="#ffffff" style="height: 99px">
                        <uc1:head ID="head2" runat="server" />
                    </td>
                    <td width="1" bgcolor="#ffffff" style="height: 99px">
                    </td>
                </tr>
            </table>
            <table cellspacing="0" cellpadding="0" width="775" align="center" bgcolor="#ffffff"
                border="0">
                <tr>
                    <td align="left">

                        <table cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td valign="top" align="center" style="width: 176px;">
                                    <table cellspacing="0" cellpadding="0" bgcolor="" border="0">
                                        <tr>
                                            <td style="width: 197px">
                                                <img height="33" src="Images/gsjs.jpg" width="171"></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 175px">
                                                <uc2:WebUserControl2 ID="WebUserControl2_1" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                    <td valign="top" align="center" class="style2">
                                    <table cellspacing="0" cellpadding="0" width="600" border="0" >
                                        <tr >
                                            <td height="25" width="100%" align=left colspan="3">
                                                <img height="43" src="Images/gsxw.jpg" width="597" border="0"></td>
                                        </tr>
                                        <tr>
                                            <td height="8" align=left >
                                                
                                                        <table width="300">
                                                            <tr>
                                                                <td width="9px" class="auto-style1">
                                                                    <img src="Images/arrow_02.gif" />
                                                                </td>
                                                                <td width="260px" align="left" class="auto-style1">
                                                                     <a class="w12" href="NewContent1.aspx">
                                                                     <span style="color: rgb(0, 0, 0);  font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">关于2022年部分节假日放假安排的通知
</span></td></a>
                                                            </tr>
                                                            </table>
                                                </td>
                                                <td height="8" align=left width="300">
                                                    &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <table height="25" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td class="auto-style2">
                                                &nbsp;</td>
                                <td height="25" width="100%">
                                    &nbsp;<img height="43" src="Images/cpzs.jpg" border="0" class="auto-style3"></td>
                            </tr>
                        </table>
                        <table cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td valign="top" align="center" width="176">
                                    <table cellspacing="0" cellpadding="0" width="175" border="0">
                                        <tr>
                                            <td align="center">
                                                <asp:Image ID="Image1" src="Images/shu.jpg" runat="server" Height="110px" Width="160px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td valign="top" class="auto-style5">
                                    <table cellspacing="2" cellpadding="0" border="0" class="auto-style6">
                                        <tr>
                                            <td align="center">
                                                <table class="auto-style4">
                                                    <tr>
                                                        <td class="auto-style7">
                                                            <asp:ImageButton ID="ImageButton2" runat="server" Height="96px" Width="144px" OnClick="ImageButton2_Click" ImageUrl="~/Images/cat.gif" />
                                                        </td>
                                                        <td class="auto-style8">
                                                            <asp:ImageButton ID="ImageButton3" runat="server" Height="96px" Width="144px" ImageUrl="~/Images/zebra.gif" OnClick="ImageButton3_Click"/>
                                                        </td>
                                                        <td class="auto-style9"></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        </table>
                                </td>
                            </tr>
                        </table>
                        <uc3:foot ID="foot1" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
