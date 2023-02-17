<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="System_Department"  %>

<%@ Register src="../controls/Department.ascx" tagname="Department" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Department ID="Department1" runat="server" />
</asp:Content>

