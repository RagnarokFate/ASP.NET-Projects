<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.master" AutoEventWireup="true" CodeFile="usersAdm.aspx.cs" Inherits="usersAdm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <span class="auto-style4">Edit Users</span></p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userEmail" DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="userEmail" HeaderText="userEmail" ReadOnly="True" SortExpression="userEmail" />
                <asp:BoundField DataField="userPassword" HeaderText="userPassword" SortExpression="userPassword" ReadOnly="True" />
                <asp:BoundField DataField="userFirstName" HeaderText="userFirstName" SortExpression="userFirstName" ReadOnly="True" />
                <asp:BoundField DataField="userLastName" HeaderText="userLastName" SortExpression="userLastName" ReadOnly="True" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city"  ReadOnly="True"/>
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" ReadOnly="True"/>
                <asp:BoundField DataField="userType" HeaderText="userType" SortExpression="userType" ReadOnly="True"/>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" EditText="Make Admin" UpdateText="accept" />

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" UpdateCommand="Update [UserTbl] SET userType='Admin'  WHERE userEmail = @userEmail" DeleteCommand="Delete From [UserTbl] WHERE userEmail = @userEmail" SelectCommand="SELECT [userEmail], [userPassword], [userFirstName], [userLastName], [city], [Gender] , [userType] FROM [UserTbl] WHERE userType='User'"></asp:SqlDataSource>
    </p>
</asp:Content>

