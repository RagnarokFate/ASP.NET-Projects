<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AccountsMang.aspx.cs" Inherits="AccountsMang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Account Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:gridview runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Email" DataSourceID="AccessDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="userType" HeaderText="userType" SortExpression="userType" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:gridview>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/UserDBP.mdb" DeleteCommand="DELETE FROM [UserDB] WHERE [Email] = ?" InsertCommand="INSERT INTO [UserDB] ([FirstName], [LastName], [Email], [Password], [userType]) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [UserDB]" UpdateCommand="UPDATE [UserDB] SET [Password] = ?, [userType] = ? WHERE [Email] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="userType" Type="String" />
        </InsertParameters>
        <UpdateParameters>

            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="userType" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
</asp:Content>

