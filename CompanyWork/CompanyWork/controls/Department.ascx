<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Department.ascx.cs" Inherits="controls_Department" %>
<%@ Register Src="DepartmentList.ascx" TagName="DepartmentList" TagPrefix="uc1" %>
<table style="width: 300px">
    <tr>
        <td>
            部门管理</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="tb_department7" runat="server" Width="182px"></asp:TextBox></td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" Width="56px" /></td>
    </tr>
    <tr>
        <td>
            <uc1:DepartmentList id="DepartmentList1" runat="server">
            </uc1:DepartmentList></td>
        <td>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="删除" Width="56px" /></td>
    </tr>
</table>
