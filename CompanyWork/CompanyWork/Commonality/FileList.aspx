<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileList.aspx.cs" Inherits="Commonality_FileList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 554px">
        <tr>
            <td style="font-size:24px;">
                文件下载列表</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
                    Width="544px" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" 
                    OnRowCreated="GridView1_RowCreated" CellPadding="4" ForeColor="#333333" 
                     GridLines="None">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="filename" HeaderText="文件名" />
                        <asp:BoundField DataField="filesize" HeaderText="大小" />
                        <asp:ButtonField CommandName="download" Text="下载文件" />
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetFileList"
                    TypeName="FileManager">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="path" PropertyName="Value" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
    </table>

</asp:Content>

