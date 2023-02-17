<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WorkTime.ascx.cs" Inherits="controls_WorkTime" %>
<link href="../CSS/StyleSheet4.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .auto-style1 {
        width: 299px;
    }
    .auto-style2 {
        width: 101px;
    }
</style>
<table 2" class="auto-style1">
            时间格式:06:30 、 18:00</td>
    </tr>
    <tr>
        <td class="auto-style2">
            上班时间：</td>
        <td >
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="auto-style2">
            下班时间：</td>
        <td >
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="auto-style2">
        </td>
        <td style="width: 1px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="设置" Width="84px" /></td>
    </tr>
</table>
