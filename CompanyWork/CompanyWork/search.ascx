<%@ Control Language="C#" AutoEventWireup="true" CodeFile="search.ascx.cs" Inherits="search" %>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">  
  <tr>
    <td align=center style="height: 22px">&nbsp;</td>
    <td align=left style="height: 22px"><asp:DropDownList ID="DropDownList1" runat="server">
      <asp:ListItem Value="1">产品信息</asp:ListItem>
      <asp:ListItem Value="2">新闻中心</asp:ListItem>
    </asp:DropDownList></td>
  </tr> 
  <tr>
    <td align="center">&nbsp;</td>
    <td align="left"><asp:TextBox ID="TextBox1" runat="server" size="20"  Width="120px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="搜索" /></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="left"></td>
  </tr>
</table>
