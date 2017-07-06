<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerFolder/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerEditDetails.aspx.cs" Inherits="BankingApplication.CustomerFolder.CustomerEditDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Edit Your Details</h1>
<p>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
            <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BankDBConnectionString %>" DeleteCommand="DELETE FROM [tblCustomers] WHERE [id] = @id" InsertCommand="INSERT INTO [tblCustomers] ([uname], [pwd]) VALUES (@uname, @pwd)" SelectCommand="SELECT * FROM [tblCustomers] WHERE ([uname] = @uname)" UpdateCommand="UPDATE [tblCustomers] SET [uname] = @uname, [pwd] = @pwd WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="pwd" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="pwd" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/CustomerFolder/CustomerDashBoard.aspx">DashBoard</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/CustomerFolder/CustomerLogout.aspx">Logout</asp:HyperLink>
    </p>
</asp:Content>
