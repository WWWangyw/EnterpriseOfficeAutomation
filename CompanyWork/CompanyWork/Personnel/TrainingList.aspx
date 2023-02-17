<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrainingList.aspx.cs" Inherits="Personnel_TrainingList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../CSS/StyleSheet4.css" rel="stylesheet" type="text/css" />
    <table style="width: 600px">
        <tr>
            <td style="width: 260px">
            &nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
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
            <td >
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1"
                    Width="380px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="Trn_Title" HeaderText="主题" SortExpression="Trn_Title" />
                        <asp:BoundField DataField="Trn_Text" HeaderText="内容" SortExpression="Trn_Text" />
                        <asp:BoundField DataField="Trn_Date" DataFormatString="{0:d}" HeaderText="日期"
                            HtmlEncode="False" SortExpression="Trn_Date" />
                        <asp:BoundField DataField="Trn_People" HeaderText="人员" SortExpression="Trn_People" />
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="DataBaseDataContext" TableName="T_Training" 
                    Where="Trn_Date == @Trn_Date">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="Calendar1" DefaultValue="2008-02-28" 
                            Name="Trn_Date" PropertyName="SelectedDate" Type="DateTime" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

