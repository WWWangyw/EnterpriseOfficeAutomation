<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>办公系统</title>

    <link href="CSS/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
        .auto-style1 {
            width: 220px;
            height: 203px;
        }
        .auto-style2 {
            height: 19px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
    
    <table style="width:100%;height:400px;" >
    <tr>
    <td style="width:100%; height:100%; text-align:center; vertical-align:middle;" valign="middle">

        <div style="text-align:left; margin: 5px auto;" class="auto-style1">
            <asp:Login ID="Login1" runat="server" PasswordRecoveryText="找回密码" PasswordRecoveryUrl="~/PassRecoveryPage.aspx"
                BackColor="#3454d3" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px"
                CreateUserText="注册" Font-Names="Verdana" Font-Size="10pt" CreateUserUrl="~/Regsiter/Register.aspx"
                DestinationPageUrl="~/WorkSystem.aspx">
                <LayoutTemplate>
                    <table border="0" cellpadding="1" cellspacing="0" 
                        style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table border="0" cellpadding="0">
                                    <tr>
                                        <td align="center" colspan="2" 
                                            style="font-weight:bold;" class="style1">
                                            登录</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" 
                                                style="color: #FFFFFF">用户名:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server" Width="130px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" 
                                                ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                                                style="color: #FFFFFF">密码:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                ControlToValidate="Password" ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" 
                                                ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="下次记住我。" 
                                                style="color: #FFFFFF" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:white;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="登录" 
                                                ValidationGroup="Login1" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="auto-style2">
                                            <asp:HyperLink ID="CreateUserLink" runat="server" 
                                                NavigateUrl="~/Regsiter/Register.aspx" style="color: #FFFFFF">注册</asp:HyperLink>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
            </asp:Login>
        </div>

    </td>
    </tr>
    </table>

    </form>
</body>
</html>
