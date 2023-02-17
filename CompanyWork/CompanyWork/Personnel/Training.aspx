<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Training.aspx.cs" Inherits="Personnel_Training" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../CSS/StyleSheet4.css" rel="stylesheet" type="text/css" />
    <table style="width: 100%; height: 439px;">
        <tr>
            <td>
                主题
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="tb_title3" runat="server" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                内容
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="tb_text4" runat="server" Rows="11" TextMode="MultiLine" 
                    Width="450px" Height="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                员工
            </td>
            <td style="height: 22px">
                日期
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="tb_personnel5" runat="server" Rows="2" TextMode="MultiLine" Width="230px"
                    Height="180px"></asp:TextBox>
            </td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999"
                    CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                    ForeColor="Black" Height="180px" Width="200px">
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
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" Width="85px" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
