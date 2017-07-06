<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerFolder/Customer.Master" AutoEventWireup="true" CodeBehind="FundTransfer.aspx.cs" Inherits="BankingApplication.CustomerFolder.FundTransfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style3">Fund Transfer Page<br />
    </h1>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <table class="auto-style1" border="1">
        <tr>
            <td>Enter amount to be transferred:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Select Person to be tranferred</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="uname" DataValueField="uname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BankDBConnectionString %>" SelectCommand="SELECT * FROM [tblCustomerbalance]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/CustomerFolder/CustomerDashBoard.aspx">Dashboard</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/CustomerFolder/CustomerLogout.aspx">Logout</asp:HyperLink>
</asp:Content>
