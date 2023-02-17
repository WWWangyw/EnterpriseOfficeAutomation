<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WorkTime.aspx.cs" Inherits="System_WorkTime" Title="Untitled Page" %>

<%@ Register src="../controls/WorkTime.ascx" tagname="WorkTime" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WorkTime ID="WorkTime1" runat="server" />
</asp:Content>

