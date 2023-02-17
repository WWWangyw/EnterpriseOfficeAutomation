<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MessageSend.ascx.cs" Inherits="controls_MessageSend" %>
            <link href="../CSS/StyleSheet3.css" rel="stylesheet" type="text/css" />
    <table style="width: 450px; text-align:left; vertical-align:top; "  >

        <tr >
            <td>
                接收人：</td>
            <td>
                <asp:TextBox ID="tb_aim" runat="server" Width="260px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                主题：</td>
            <td>
                <asp:TextBox ID="tb_title" runat="server" Width="260px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                正文：</td>
            <td>
                <asp:TextBox ID="tb_text" runat="server" Rows="6" TextMode="MultiLine" 
                    Width="260px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发送" Width="90px" />
            </td>
        </tr>
    </table>