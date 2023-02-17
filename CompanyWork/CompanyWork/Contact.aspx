<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>
<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="menue.ascx" TagName="menue" TagPrefix="uc2" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>联系我们</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="styles/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="styles/cms.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 92%;
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
            <table cellspacing="0" cellpadding="0" width="775" align="center" bgcolor="#ffffff"
                border="0">
                <tr>
                    <td width="1" bgcolor="#ffffff" rowspan="2">
                    </td>
                    <td valign="top" align="center" width="179" bgcolor="#daeae8" height="99">
                        <table border="0" style="width: 100%">
                            <tr>
                                <td align="center" style="height: 177px">
                                    <uc2:menue ID="menue_1" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="1" background="Images/xxs.gif" rowspan="2">
                    </td>
                    <td valign="top" align="center" rowspan="2">
                        <table height="43" cellspacing="0" cellpadding="0" background="Images/2ji_gsyw.jpg" border="0" style="width: 598px">
                            <tr>
                                <td width="31">
                                </td>
                                <td width="499" align="left">
                                    <span style="color: #000000"><strong>
                                    联系我们</strong></span>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0" cellpadding="0" width="20%" border="0">
                            <tr>
                                <td height="20">
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0" cellpadding="0" border="0" class="auto-style1">
                            <tr>
                                <td class="cmscontent" valign="top">
                                    <div align="left" >
                                        <p>
                                            南京大学金陵学院</p>
                                    </div>
                                    <div align="left" >
                                        <p>
                                            信息科学与工程学院</p>
                                    </div>
                                    <div align="left" >
                                        <p>
                                            计算机科学与技术</p>
                                    </div>
                                    <div align="left" >
                                        <p>
                                            2019020800238王烨雯 2019020800234王欣妤</p>
                                    </div>
                                    <div align="left" >
                                        <p>
                                            &nbsp;<asp:Label ID="Label4" runat="server">QQ：2323503295/2479560021</asp:Label>&nbsp;

                                        </p>
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
