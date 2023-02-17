<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MessageHistory.aspx.cs" Inherits="UserCenter_MessageHistory" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 400px">
        <tr>
            <td  style="font-size:24px;">
                信息接收列表</td>
        </tr>
        <tr>
            <td style="height: 436px">
                <asp:GridView  ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    DataKeyNames="Msg_ID" DataSourceID="LinqDataSource1" Width="524px" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="Msg_Send" HeaderText="发送人" SortExpression="Msg_Send" />
                        <asp:BoundField DataField="Msg_Title" HeaderText="主题" SortExpression="Msg_Title" />
                        <asp:BoundField DataField="Msg_Content" HeaderText="正文" SortExpression="Msg_Content" />
                        <asp:CheckBoxField DataField="Msg_Status" HeaderText="是否阅读" SortExpression="Msg_Status" />
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="DataBaseDataContext" TableName="T_Message" 
                    Where="Msg_Receive == @Msg_Receive">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="Msg_Receive" 
                            PropertyName="Value" Type="String" />
                    </WhereParameters>
                </asp:LinqDataSource>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

