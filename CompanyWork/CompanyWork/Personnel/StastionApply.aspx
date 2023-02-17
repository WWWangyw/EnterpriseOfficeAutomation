<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StastionApply.aspx.cs" Inherits="Personnel_StastionApply" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../CSS/StyleSheet4.css" rel="stylesheet" type="text/css" />
    
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="DataBaseDataContext" Select="new (Dpt_ID, Dpt_Name)" 
                    TableName="T_Department">
                </asp:LinqDataSource>
            <table style="width: 578px;">
                <tr>
                    <td>
                部门：</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1"
                    DataTextField="Dpt_Name" DataValueField="Dpt_ID" Width="160px">
                </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                职位：</td>
                    <td>
                <asp:TextBox ID="tb_station1" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td>
                人数：</td>
                    <td>
                <asp:TextBox ID="tb_count" runat="server" Width="80px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        要求：</td>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                <asp:TextBox ID="tb_qualification1" runat="server" Rows="4" TextMode="MultiLine" 
                    Width="539px" Height="130px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        备注：</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                <asp:TextBox ID="tb_note2" runat="server" Width="420px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                <asp:Button ID="Button1" runat="server" Text="提交" Width="110px" OnClick="Button1_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
    </table>
</asp:Content>

