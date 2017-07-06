<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerFolder/Customer.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="BankingApplication.CustomerFolder.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        FAQ Page</p>
    <p>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/CustomerFolder/CustomerDashBoard.aspx">Dashboard</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/CustomerFolder/CustomerLogout.aspx">Logout</asp:HyperLink>
    </p>
</asp:Content>
