<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../CSS/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 331px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 100%; height: 400px; vertical-align: middle; text-align: center;">
        <tr>
            <td>
                <div style="margin: 4px auto; text-align: left;" class="auto-style1">
                    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
                        OnCreatedUser="CreateUserWizard1_CreatedUser" BackColor="#F7F6F3" 
                        BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
                        Font-Names="Verdana" Font-Size="0.8em" 
                        oncontinuebuttonclick="CreateUserWizard1_ContinueButtonClick" 
                        onfinishbuttonclick="CreateUserWizard1_FinishButtonClick" Width="328px">
                        <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" 
                            VerticalAlign="Top" />
                        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                            ForeColor="#284775" />
                        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                            ForeColor="#284775" />
                        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
                            Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                        <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                            ForeColor="#284775" />
                        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <StepStyle BorderWidth="0px" />
                        <WizardSteps>
                            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" />
                            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
                        </WizardSteps>
                    </asp:CreateUserWizard>
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
