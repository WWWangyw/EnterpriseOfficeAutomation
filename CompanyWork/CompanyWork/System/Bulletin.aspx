<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bulletin.aspx.cs" Inherits="System_Bulletin"  %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 571px">
    <tr>
        <td style="height: 25px">
            发布公告</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Rows="5" TextMode="MultiLine" Width="412px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发布" Width="84px" /></td>
    </tr>
</table>
</asp:Content>

