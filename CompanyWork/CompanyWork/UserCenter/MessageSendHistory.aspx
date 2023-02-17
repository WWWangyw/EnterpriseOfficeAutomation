<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MessageSendHistory.aspx.cs" Inherits="UserCenter_MessageSendHistory" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 550px">
        <tr>
            <td style="font-size:24px;">
                信息发送列表</td>
        </tr>
        <tr>
            <td style="height: 155px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        DataKeyNames="Msg_ID" DataSourceID="LinqDataSource1" Width="500px" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="Msg_Receive" HeaderText="接收人" SortExpression="Msg_Receive" />
                            <asp:BoundField DataField="Msg_Title" HeaderText="标题" SortExpression="Msg_Title" />
                            <asp:BoundField DataField="Msg_Content" HeaderText="正文" SortExpression="Msg_Content" />
                        </Columns>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                        ContextTypeName="DataBaseDataContext" TableName="T_Message" 
                        Where="Msg_Send == @Msg_Send">
                        <WhereParameters>
                            <asp:ControlParameter ControlID="hf_userName" Name="Msg_Send" PropertyName="Value" 
                                Type="String" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                    <asp:HiddenField ID="hf_userName" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

