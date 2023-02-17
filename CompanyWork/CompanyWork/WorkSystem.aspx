<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="WorkSystem.aspx.cs" Inherits="_WorkSystem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 430px; text-align:left;">
        <tr>
            <td>
                您好：<asp:LoginName ID="LoginName1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                今天日期:&nbsp;&nbsp;
                <asp:Label ID="lb_date" runat="server" Text="Label" ></asp:Label></td>
        </tr>
        <tr>
            <td>
                上班时间：
                <asp:Label ID="lb_workTime" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>

            </td>
        </tr>
    </table>
                  
</asp:Content>