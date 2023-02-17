<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StastionApplyList.aspx.cs" Inherits="Personnel_StastionApplyList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width: 691px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="职位申报列表" Width="281px"></asp:Label></td>
        </tr>
        <tr>
            <td style="height: 178px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1"
                    Width="683px" OnRowUpdating="GridView1_RowUpdating" 
                    DataKeyNames="Apl_ID" OnRowUpdated="GridView1_RowUpdated" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="Dpt_Name" HeaderText="申请部门" 
                            SortExpression="Dpt_Name" ReadOnly="True" />
                        <asp:BoundField DataField="Apl_work" HeaderText="职位" SortExpression="Apl_work" />
                        <asp:BoundField DataField="Apl_Amount" HeaderText="人数" SortExpression="Apl_Amount" />
                        <asp:BoundField DataField="Apl_qualification" HeaderText="要求" SortExpression="Apl_qualification" />
                        <asp:BoundField DataField="Apl_Note" HeaderText="备注" SortExpression="Apl_Note" />
                        <asp:CheckBoxField DataField="Apl_Status" HeaderText="是否完成" SortExpression="Apl_Status" />
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server"
                    ContextTypeName="DataBaseDataContext" 
                    Select="new (Apl_ID, Dpt_ID, Apl_work, Apl_Amount, Apl_Status, Apl_Note, Apl_qualification, T_Department.Dpt_Name)" 
                    TableName="T_Apply" >
                </asp:LinqDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

