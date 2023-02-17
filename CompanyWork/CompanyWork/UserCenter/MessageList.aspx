<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MessageList.aspx.cs" Inherits="UserCenter_MessageList" Title="Untitled Page" %>

<%@ Register Src="../controls/MessageList.ascx" TagName="MessageList" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:MessageList ID="MessageList1" runat="server" />
</asp:Content>

