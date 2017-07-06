<%@ Page Title="" Language="C#" MasterPageFile="~/CashierFolder/Cashier.Master" AutoEventWireup="true" CodeBehind="CashierDeposit.aspx.cs" Inherits="BankingApplication.CashierFolder.CashierDeposit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style3">Cashier Deposit Page</h1>
    <p>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    </p>
    <table class="auto-style1" border="1">
        <tr>
            <td class="auto-style4">Enter amount to be deposited</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Deposit " />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
