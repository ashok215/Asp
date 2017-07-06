<%@ Page Title="" Language="C#" MasterPageFile="~/CashierFolder/Cashier.Master" AutoEventWireup="true" CodeBehind="CashierWithdraw.aspx.cs" Inherits="BankingApplication.CashierFolder.CashierWithdraw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Cashier Withdraw Page</h1>
    <table class="auto-style1" border="1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td>Enter amount to withdraw</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit to Withdraw" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
