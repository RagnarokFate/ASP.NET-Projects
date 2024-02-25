<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.master" AutoEventWireup="true" CodeFile="AccountsMang.aspx.cs" Inherits="AccountsMang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <span class="auto-style7"><strong>STMPD RCRDS Account DataBase
</strong></span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="userEmail" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical" CssClass="auto-style2" AllowPaging="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="userEmail" HeaderText="userEmail" ReadOnly="True" SortExpression="userEmail" />
            <asp:BoundField DataField="userPassword" HeaderText="userPassword" SortExpression="userPassword" />
            <asp:BoundField DataField="userFirstName" HeaderText="userFirstName" SortExpression="userFirstName" />
            <asp:BoundField DataField="userLastName" HeaderText="userLastName" SortExpression="userLastName" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="userType" HeaderText="userType" SortExpression="userType" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [UserTbl] WHERE [userEmail] = ?" InsertCommand="INSERT INTO [UserTbl] ([userEmail], [userPassword], [userFirstName], [userLastName], [city], [Gender], [userType]) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [userEmail], [userPassword], [userFirstName], [userLastName], [city], [Gender], [userType] FROM [UserTbl]" UpdateCommand="UPDATE [UserTbl] SET [userPassword] = ?, [userFirstName] = ?, [userLastName] = ?, [city] = ?, [Gender] = ?, [userType] = ? WHERE [userEmail] = ?">
        <DeleteParameters>
            <asp:Parameter Name="userEmail" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userEmail" Type="String" />
            <asp:Parameter Name="userPassword" Type="String" />
            <asp:Parameter Name="userFirstName" Type="String" />
            <asp:Parameter Name="userLastName" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="userType" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="userPassword" Type="String" />
            <asp:Parameter Name="userFirstName" Type="String" />
            <asp:Parameter Name="userLastName" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="userType" Type="String" />
            <asp:Parameter Name="userEmail" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

