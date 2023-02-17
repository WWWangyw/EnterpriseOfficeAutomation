<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PasswordEdit.aspx.cs" Inherits="UserCenter_PasswordEdit" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:ChangePassword ID="ChangePassword1" runat="server" ContinueButtonText="完成" 
        OnContinueButtonClick="ChangePassword1_ContinueButtonClick" ChangePasswordButtonText="修改密码" 
        ChangePasswordTitleText="修改你的密码" SuccessText="你的密码已经更改了" 
        SuccessTitleText="密码修改成功" 
    onchangedpassword="ChangePassword1_ChangedPassword" BackColor="#F7F6F3" 
        BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em">
        <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
        <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
        <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
        <TextBoxStyle Font-Size="0.8em" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    </asp:ChangePassword>
    </div>
</asp:Content>

