<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerFolder/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerDashBoard.aspx.cs" Inherits="BankingApplication.CustomerFolder.CustomerDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome, Customer DashBoard</h1>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/CustomerFolder/CustomerEditDetails.aspx">Edit Details</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/CustomerFolder/FundTransfer.aspx">Fund Transfer</asp:HyperLink>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/CustomerFolder/CustomerLogout.aspx">Logout</asp:HyperLink>
    </p>
</asp:Content>
