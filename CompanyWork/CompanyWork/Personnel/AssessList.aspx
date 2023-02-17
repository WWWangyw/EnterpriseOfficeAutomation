<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AssessList.aspx.cs" Inherits="Personnel_AssessList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../CSS/StyleSheet4.css" rel="stylesheet" type="text/css" />
    <table style="width: 500px">
        <tr>
            <td style="width: 160px">
                员工名：</td>
            <td style="width: 285px">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="查询" Width="69px" /></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Ass_ID"
                    DataSourceID="LinqDataSource1" Width="501px" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="EmployeeName" HeaderText="名称" SortExpression="EmployeeName" />
                        <asp:BoundField DataField="Ass_Data" HeaderText="详细内容" SortExpression="Ass_Data" />
                        <asp:BoundField DataField="Ass_Date" DataFormatString="{0:d}" HeaderText="日期" HtmlEncode="False"
                            SortExpression="Ass_Date" />
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="DataBaseDataContext" TableName="T_Assess" 
                    Where="EmployeeName == @EmployeeName">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="EmployeeName" 
                            PropertyName="Text" Type="String" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

