<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DepartmentList.ascx.cs" Inherits="controls_DepartmentList" %>
<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1"
    DataTextField="Dpt_Name" DataValueField="Dpt_ID" Height="16px" 
    Width="190px">
</asp:DropDownList>
<asp:LinqDataSource ID="LinqDataSource1" runat="server" 
    ContextTypeName="DataBaseDataContext" TableName="T_Department">
</asp:LinqDataSource>

