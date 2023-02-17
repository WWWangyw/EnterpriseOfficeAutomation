<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RoleEdit.ascx.cs" Inherits="controls_RoleEdit" %>
<link href="../CSS/StyleSheet4.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .style_table
    {
        width: 100%;
    }
</style>
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <table style="width: 460px">
            <tr>
                <td style="width: 290px">
                    角色添加：
                </td>
                <td style="width: 210px">
                </td>
            </tr>
            <tr>
                <td style="width: 290px">
                    <asp:TextBox ID="tb_roleName" runat="server" Width="220px"></asp:TextBox>
                </td>
                <td style="width: 210px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" Width="70px" />
                </td>
            </tr>
            <tr>
                <td style="width: 290px">
                    角色删除：
                </td>
                <td style="width: 210px">
                </td>
            </tr>
            <tr>
                <td style="width: 290px">
                    <asp:DropDownList ID="ddl_role" runat="server" Width="220px">
                    </asp:DropDownList>
                </td>
                <td style="width: 204px">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="删除" Width="70px" />
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <div style="width: 600px;">
            <div style="float: left; width: 200px;">
                <table style="width: 300px">
                    <tr>
                        <td>
                            用户添加：
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 300px">
                            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueButtonText="完成"
                                OnContinueButtonClick="CreateUserWizard1_ContinueButtonClick" LoginCreatedUser="False">
                                <WizardSteps>
                                    <asp:CreateUserWizardStep runat="server">
                                    </asp:CreateUserWizardStep>
                                    <asp:CompleteWizardStep runat="server">
                                    </asp:CompleteWizardStep>
                                </WizardSteps>
                            </asp:CreateUserWizard>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </div>
            <div style="float: right; width: 160px;">
                <table class="style_table">
                    <tr>
                        <td>
                            用户列表<br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName"
                                DataSourceID="ObjectDataSource1" Width="230px" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True"  />
                                    <asp:BoundField DataField="UserName" HeaderText="用户名" ReadOnly="True" SortExpression="UserName" />
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
                            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteUser"
                                SelectMethod="GetAllUsers" TypeName="UserManager">
                                <DeleteParameters>
                                    <asp:Parameter Name="UserName" Type="String" />
                                </DeleteParameters>
                            </asp:ObjectDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <table style="width: 451px">
            <tr>
                <td style="width: 175px; text-align:right;">
                    用户：
                </td>
                <td>
                    <asp:TextBox ID="tb_username" runat="server" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 175px; text-align:right;">
                    角色：
                </td>
                <td>
                    <asp:DropDownList ID="ddl_role2" runat="server" Width="190px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 175px">
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="添加" Width="60px" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="移除" Width="60px" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    选择角色显示对应用户
                </td>
            </tr>
            <tr>
                <td style="width: 175px">
                    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
                        Width="152px"></asp:ListBox>
                </td>
                <td>
                    <asp:ListBox ID="ListBox2" runat="server" Width="187px"></asp:ListBox>
                </td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
