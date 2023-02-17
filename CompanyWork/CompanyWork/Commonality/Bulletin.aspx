<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bulletin.aspx.cs" Inherits="Commonality_Bulletin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../CSS/StyleSheet3.css" rel="stylesheet" type="text/css" />
    <table style="width: 507px">
        <tr>
            <td style="height: 26px; vertical-align:top;" valign="top">
                <table style="width: 100%">
                    <tr>
                        <td>
                            </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        &nbsp;<asp:Calendar ID="Calendar1" runat="server" Width="200px" BackColor="White" 
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
                        <td style="font-size:24px;">
                            详细列表<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="B_ID"
                    DataSourceID="LinqDataSource1" Width="400px" CellPadding="4" ForeColor="#333333" 
                                GridLines="None">
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="B_Content" HeaderText="详细内容" SortExpression="B_Content" />
                        <asp:BoundField DataField="B_Time" DataFormatString="{0:d}" HeaderText="时间"
                            HtmlEncode="False" SortExpression="B_Time" />
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
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="DataBaseDataContext" TableName="T_Bulletin" 
                    Where="B_Time == @B_Time">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="Calendar1" DefaultValue="2008-02-28"  Name="B_Time" 
                            PropertyName="SelectedDate" Type="DateTime" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

