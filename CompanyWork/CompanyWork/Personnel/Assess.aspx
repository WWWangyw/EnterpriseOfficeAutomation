<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Assess.aspx.cs" Inherits="PeopleArea_Assess" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../CSS/StyleSheet4.css" rel="stylesheet" type="text/css" />
    <table style="width:731px; height: 311px;">
        <tr>
            <td style="width: 61px">
                姓名：</td>
            <td >
                <asp:TextBox ID="tb_name1" runat="server" Width="200px"></asp:TextBox></td>
            <td >
                日期：</td>
        </tr>
        <tr>
            <td style="width: 61px; height: 241px;"  >
                内容：</td>
            <td style="height: 241px" >
                <asp:TextBox ID="tb_data1" runat="server" Rows="10" TextMode="MultiLine" 
                    Width="403px" Height="180px"></asp:TextBox></td>
            <td style="height: 241px" >
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                    Width="200px">
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
            <td style="width: 61px"  >
                &nbsp;</td>
            <td >
                <asp:Button ID="Button1" runat="server" Text="登     记" OnClick="Button1_Click" Width="153px" />
            </td>
            <td >
            </td>
        </tr>
    </table>
</asp:Content>

