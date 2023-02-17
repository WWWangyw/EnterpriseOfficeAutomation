<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Culture.aspx.cs" Inherits="Culture" %>
<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="WebUserControl2.ascx" TagName="WebUserControl2" TagPrefix="uc2" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>企业文化</title>
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
            <table cellspacing="0" cellpadding="0" width="773" align="center" bgcolor="#ffffff" border="0">
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
                                    企业文化</strong></span>
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
                                            <asp:Label ID="content" runat="server">  南京大学金陵学院创办于1998年，坐落在南京大学浦口校区，占地1011亩，校舍31万平米，
                                                师生员工12000人。这里铭刻“诚朴雄伟、励学敦行”的大学校训，这里坚守“嚼得菜根，做得大事”的精神家园。在这里，花香与
                                                书馨是不变的风景，特色与创新是永恒的追求。
                                                学校的举办方——百年名校南京大学，是直属教育部的重点综合性大学、国家首批“211工程”“985工程”“2011计划”和“双一流”
                                                建设高校，过去一个多世纪在人才培养、科学研究、社会服务和文化传承创新等方面成果卓著，享誉海内外。南京大学党政领导的高度
                                                重视，各院系、部门的关心支持，雄厚的办学支撑，为学校事业发展提供了强有力的保障。依托南京大学的优质教育教学资源，学校采
                                                用全新的办学机制和模式，立足江苏，面向全国，牢固树立“特色发展、争创一流”的办学思想，探索创新国内一流应用型大学的办学
                                                路径，积极推进产学研深度融合人才培养模式改革，致力培养具有创新精神的高素质应用型人才。</asp:Label>&nbsp;</p>
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
            <table cellspacing="0" cellpadding="0" width="773" align="center" border="0">
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