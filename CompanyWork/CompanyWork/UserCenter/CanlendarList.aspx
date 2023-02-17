<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CanlendarList.aspx.cs" Inherits="UserCenter_CanlendarList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 471px">
        <tr>
            <td>
               本日日程安排：</td>
        </tr>
        <tr>
            <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cld_ID"
                        DataSourceID="LinqDataSource1" Width="460px" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="Cld_Title" HeaderText="标题" SortExpression="Cld_Title" />
                            <asp:BoundField DataField="Cld_Content" HeaderText="内容" SortExpression="Cld_Content" />
                        </Columns>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                        ContextTypeName="DataBaseDataContext" TableName="T_Calendar" 
                        Where="EmployeeName == @EmployeeName &amp;&amp; Cld_Date == @Cld_Date">
                        <WhereParameters>
                            <asp:ControlParameter ControlID="HiddenField1" Name="EmployeeName" 
                                PropertyName="Value" Type="String" />
                            <asp:ControlParameter ControlID="HiddenField2" Name="Cld_Date" 
                                PropertyName="Value" Type="DateTime" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                    <asp:HiddenField ID="HiddenField2" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

