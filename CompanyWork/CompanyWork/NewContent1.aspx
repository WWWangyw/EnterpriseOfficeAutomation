<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewContent1.aspx.cs" Inherits="NewContent1" %>

<!DOCTYPE html>
<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="menue.ascx" TagName="menue" TagPrefix="uc2" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>新闻信息</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="styles/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <link href="styles/cms.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 84%;
        }
        .auto-style2 {
            width: 80%;
            height: 50px;
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
                                <td align="center" style="height: 177px">
                                    <uc2:menue ID="menue_1" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="1" background="Images/xxs.gif" rowspan="2">
                    </td>
                    <td valign="top" align="center" rowspan="2">
                        <table height="43" cellspacing="0" cellpadding="0" background="Images/2ji_gsyw.jpg"
                            border="0" style="width: 598px; height: 43px;">
                            <tr>
                                <td width="31">
                                </td>
                                <td width="499" align="left">
                                    <span style="color: #000000"><strong>
                                    新闻阅读</strong></span>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0" cellpadding="0" border="0" class="auto-style2">
                            <tr>
                                <td height="20">
                                    <span style="color: rgb(51, 51, 51); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">关于2022年部分节假日放假安排的通知</span></td>
                            </tr>
                        </table>
                        <br />
                        <table cellspacing="0" cellpadding="0" border="0" class="auto-style1">
                            <tr>
                                <td class="cmscontent" valign="top">
                                    <div align="left" >
                                        <p>
                                            <asp:Label runat="server">各院系、各单位要妥善安排好假期值班、疫情防控和安全检查等相关工作，
                                                消除安全隐患，切实做好节假日的值班安排、疫情防控和安全保卫工作。各院系、各单位要在每次
                                                放假前对师生员工进行一次安全教育,并掌握放假期间离校外出学生的去向。常态化疫情防控期间,
                                                请师生员工遵守属地政府以及学校疫情防控相关规定,离宁人员须严格执行请销假制度。后勤服务
                                                中心的放假时间可自行安排。遇有重大突发事件,要及时报告学校总值班室并妥善处置。</asp:Label>&nbsp;</p>
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

