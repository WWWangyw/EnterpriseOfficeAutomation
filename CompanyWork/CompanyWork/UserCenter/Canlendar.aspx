<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Canlendar.aspx.cs" Inherits="UserCenter_Canlendar" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../CSS/StyleSheet3.css" rel="stylesheet" type="text/css" />
    <table style="width:650px; text-align:left; ">
        <tr>
            <td style="width: 100px">
                主题：</td>
            <td>
                <asp:TextBox runat="server" Width="330px" ID="tb_title5"></asp:TextBox></td>
            <td>
                日期：</td>
        </tr>
        <tr>
            <td style="width: 100px">
                内容：</td>
            <td>
                <asp:TextBox ID="tb_text6" runat="server" Rows="3" TextMode="MultiLine" 
                    Width="330px" Height="175px"></asp:TextBox></td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" Width="200px" BackColor="White" 
                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px">
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" Width="129px" /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

