<%@ Page Title="" Language="C#" MasterPageFile="~/CashierFolder/Cashier.Master" AutoEventWireup="true" CodeBehind="CashierDashBoardPage.aspx.cs" Inherits="BankingApplication.CashierFolder.CashierDashBoardPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome, Cashier Dashboard</h1>
    <p>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CashierFolder/CashierDeposit.aspx">Cashier Deposit</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/CashierFolder/CashierWithdraw.aspx">Cashier Withdraw</asp:HyperLink>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/CashierFolder/CashierLogout.aspx">Logout</asp:HyperLink>
    </p>
</asp:Content>
