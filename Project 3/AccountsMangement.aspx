<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AccountsMangement.aspx.cs" Inherits="AccountsMangement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:gridview runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="userName" DataSourceID="AccessDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="userName" HeaderText="userName" ReadOnly="True" SortExpression="userName" />
            <asp:BoundField DataField="passWord" HeaderText="passWord" SortExpression="passWord" />
            <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:gridview>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/asadDataBase.mdb" DeleteCommand="DELETE FROM [userTbl] WHERE [userName] = ?" InsertCommand="INSERT INTO [userTbl] ([userName], [passWord], [Fullname], [Status]) VALUES (?, ?, ?, ?)" SelectCommand="SELECT * FROM [userTbl]" UpdateCommand="UPDATE [userTbl] SET [passWord] = ?, [Fullname] = ?, [Status] = ? WHERE [userName] = ?">
        <DeleteParameters>
            <asp:Parameter Name="userName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="passWord" Type="String" />
            <asp:Parameter Name="Fullname" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="passWord" Type="String" />
            <asp:Parameter Name="Fullname" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="userName" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>

