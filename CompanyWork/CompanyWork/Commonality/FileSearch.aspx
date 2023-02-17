<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileSearch.aspx.cs" Inherits="Commonlity_FileSearch" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 568px">
        <tr>
            <td style="font-size:24px;">
                文件搜索</td>
        </tr>
        <tr>
            <td style="font-size:12px;">
                示例：*.bmp, *.jpg , *.txt&nbsp; , *.doc </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="228px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="查询" Width="69px" /></td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1"
                    Width="498px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="filename" HeaderText="文件名" />
                        <asp:BoundField DataField="filesize" HeaderText="大小" />
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SearchFile"
                    TypeName="FileManager">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenField1" DefaultValue="" Name="path" PropertyName="Value"
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" DefaultValue="*.*" Name="pattern"
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

