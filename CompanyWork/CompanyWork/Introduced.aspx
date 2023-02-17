<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Introduced.aspx.cs" Inherits="_Introduced" %>
<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="WebUserControl2.ascx" TagName="WebUserControl2" TagPrefix="uc2" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>公司介绍</title>
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
                                <td align="center" style="height: 177px">
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
                                    公司简介</strong></span>
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
                                            <asp:Label ID="Label1" runat="server">学校始终坚持以队伍建设为核心，精心打造了一支师德高尚、业务精湛、结构合理、充满活力的高水平
                                                教师队伍，众多教学名师与知名学者耕耘在教学第一线，由中科院院士郭子建任主任委员、南京大学资深教授组成的教学督导委员会全面指导
                                                教学工作，与广大教师共同维护着教学质量生命线。在引进高水平学科带头人的同时，学校采取多元化培养举措，成立教师发展中心，重点推
                                                进青年骨干教师培养，结合健全干部选拔任用机制、实施“优秀辅导员成长计划”，形成教职工多渠道发展的“三提升”计划。一批优秀青年
                                                教师迅速成长，多人入选江苏高校“青蓝工程”和“国内访问学者计划”。随着越来越多的南京大学优秀教师、双师型教师和外籍教师的加盟，
                                                师资队伍持续优化。秉承南京大学的优良传统和人文精神，学校开设“金陵博雅讲堂”，两院院士、知名学者和业界名家、社会名流以学术风
                                                范和人格魅力感染着莘莘学子。一批南京大学中青年管理骨干构成了学校管理层的中坚力量，他们开拓创新，锐意进取，学校事业得以青蓝相
                                                继、薪火相传。
                                                学校始终坚持以人才培养为根本，不断推出提高培养质量的新举措。2011年承担江苏实施国家教育体制改革试点的“全面学分制改革”项目,
                                                充分借鉴南京大学“三三制”本科教学改革的成功经验，在优质课程资源等方面共建共享，实现学生的个性化发展。近年来实施“专业+”行
                                                动计划，构筑“新闻无人机”等跨学科交叉融合人才培养实验区，同时加强创新创业教育，以“装配式建筑”等为切入点探索校企合作协同
                                                育人机制，创新打造一体两翼的产学研深度融合人才培养模式。学校每年投入专项经费组织开展教学改革，承担多项国家课题立项项目和教
                                                育部教育改革创新项目，获评江苏省教学成果奖和省级重点教材，出版了《工程数学》等50余部契合应用型人才培养目标的精品教材。学校
                                                于2015年成立应用技术研究院，与南京大学合作开启专硕培养新模式；2019年成立学科交叉研究院，进一步促进多学科交叉融合。与此同时,
                                                科学研究工作深入推进，取得了国家自然科学基金项目、教育部人文社科项目等一系列突破进展。由艺术学院主创的2013年南京市重点文化
                                                工程之一——老城南记忆馆展陈设计，得到省市专家高度评价；同年11月，传媒学院制作的微纪录片《孙明经：远去的金陵背影》亮相第八
                                                届巴黎中国电影节，凭借充沛的人文情怀和冷峻的历史表达，获得最佳文献纪录片奖。学校主动对接、积极融入南京大学国家级双创示范基
                                                地建设，加强培养学生的实践创新和就业创业能力，连年获得省教育厅“大学生实践创新训练计划”多项立项，并大力开展学术科技、文化
                                                艺术、志愿服务等大学生第二课堂和社会实践活动，为学生的健康成长和全面发展提供了广阔空间。</asp:Label>&nbsp;</p>
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
                                    <img src="Images/left.jpg" height="445"  width="178"></td>
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
