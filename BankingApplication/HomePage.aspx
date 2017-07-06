<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BankingApplication.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1"> Banking Application Home Page</h1>
        </div>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminFolder/AdminLoginPage.aspx">Go to Admin Login Page</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CashierFolder/CashierLogin.aspx">Go to Cashier LoginPage</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/CustomerFolder/CustomerRegisterPersonalDetails.aspx">Go to CustomerRegister Page</asp:HyperLink>
        </p>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CustomerFolder/CustomerLoginPage.aspx">Go to Customer Login Page</asp:HyperLink>
    </form>
</body>
</html>
