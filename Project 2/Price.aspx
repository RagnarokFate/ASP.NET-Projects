<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Price.aspx.cs" Inherits="Price" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <p>
        Setting Price</p>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Type" DataSourceID="AccessDataSource1" EnableModelValidation="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="Type" HeaderText="Type" ReadOnly="True" SortExpression="Type" />
            <asp:BoundField DataField="Hour" HeaderText="Hour" SortExpression="Hour" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/UserDBP.mdb" DeleteCommand="DELETE FROM [SetsPrices] WHERE [Type] = ?" InsertCommand="INSERT INTO [SetsPrices] ([Type], [Hour], [Price]) VALUES (?, ?, ?)" SelectCommand="SELECT * FROM [SetsPrices]" UpdateCommand="UPDATE [SetsPrices] SET [Hour] = ?, [Price] = ? WHERE [Type] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Type" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Hour" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Hour" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>

