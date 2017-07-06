<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerFolder/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerLogout.aspx.cs" Inherits="BankingApplication.CustomerFolder.CustomerLogout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Customer Logout</h1>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Login Again?
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/CustomerFolder/CustomerLoginPage.aspx">Login</asp:HyperLink>
    </p>
</asp:Content>
