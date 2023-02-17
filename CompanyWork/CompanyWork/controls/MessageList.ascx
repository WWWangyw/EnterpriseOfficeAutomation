<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MessageList.ascx.cs" Inherits="controls_MessageList" %>


<link href="../CSS/StyleSheet3.css" rel="stylesheet" type="text/css" />



<table style="width:548px;">
    <tr>
        <td style="width:150px;">
            信息列表：</td>
        <td>

            正文：</td>
    </tr>
    <tr>
        <td style="width:100px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Msg_ID"
    DataSourceID="LinqDataSource1" Width="230px" 
    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
    OnSelectedIndexChanging="GridView1_SelectedIndexChanging" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" SelectText="选择" />
        <asp:BoundField DataField="Msg_Send" HeaderText="发送人" SortExpression="Msg_Send" />
        <asp:BoundField DataField="Msg_Title" HeaderText="主题" SortExpression="Msg_Title" />
    </Columns>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:GridView></td>
        <td>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                DataSourceID="LinqDataSource2" ForeColor="#333333" Height="160px" 
                style="margin-bottom: 0px" Width="300px">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <ItemStyle BackColor="White" />
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                <div style="width:300px;"><asp:Label ID="Msg_ContentLabel" runat="server" 
                        Text='<%# Eval("Msg_Content") %>' /></div>
                    
                    <br />
                </ItemTemplate>
            </asp:DataList>
            </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

<asp:LinqDataSource ID="LinqDataSource1" runat="server" 
    ContextTypeName="DataBaseDataContext" TableName="T_Message" 
    Where="Msg_Receive == @Msg_Receive  &amp;&amp; Msg_Status == @Msg_Status">
    <WhereParameters>
        <asp:ControlParameter ControlID="HiddenField1"  Name="Msg_Receive" 
            PropertyName="Value" Type="String" />
        <asp:Parameter DefaultValue="false" Name="Msg_Status" Type="Boolean" />
    </WhereParameters>
</asp:LinqDataSource>

<asp:LinqDataSource ID="LinqDataSource2" runat="server" 
    ContextTypeName="DataBaseDataContext" Select="new (Msg_ID, Msg_Content)" 
    TableName="T_Message" Where="Msg_ID == @Msg_ID">
    <WhereParameters>
        <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="Msg_ID" 
            PropertyName="SelectedValue" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>

<asp:HiddenField ID="HiddenField1" runat="server" />
