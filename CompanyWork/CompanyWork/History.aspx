<%@ Page Language="C#" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="History" %>
<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="WebUserControl2.ascx" TagName="WebUserControl2" TagPrefix="uc2" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>成长历程</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="styles/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="styles/cms.css" rel="stylesheet" type="text/css" />
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
                                            <td style="width: 197px">
                                                <img height="33" src="Images/gsjs.jpg" width="171"></td>
                                        </tr>                           
                            <tr>
                                <td align="center" style="height: 177px">
                                    <uc2:WebUserControl2 ID="WebUserControl2_1" runat="server" />
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
                                    <span style="color: #000000"><strong>
                                    成长历程</strong></span>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0" cellpadding="0" width="20%" border="0">
                            <tr>
                                <td height="20">
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0" cellpadding="0" width="90%" border="0">
                            <tr>
                                <td class="cmscontent" valign="top">
                                    <div align="left">
                                        <p>
                                            <asp:Label ID="Label1" runat="server">成长历程</asp:Label>&nbsp;</p>
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
