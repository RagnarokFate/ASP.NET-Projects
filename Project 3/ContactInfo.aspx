<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ContactInfo.aspx.cs" Inherits="ContactInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="Message" DataSourceID="AccessDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
            <asp:BoundField DataField="Topic" HeaderText="Topic" SortExpression="Topic" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="Message" HeaderText="Message" ReadOnly="True" SortExpression="Message" />
                        <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />

        </Columns>
    </asp:gridview>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/asadDataBase.mdb" DeleteCommand="DELETE FROM [ContactTbl] WHERE [Message] = ?" InsertCommand="INSERT INTO [ContactTbl] ([Fullname], [Topic], [PhoneNumber], [Message]) VALUES (?, ?, ?, ?)" SelectCommand="SELECT * FROM [ContactTbl]" UpdateCommand="UPDATE [ContactTbl] SET [Fullname] = ?, [Topic] = ?, [PhoneNumber] = ? WHERE [Message] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Message" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Fullname" Type="String" />
            <asp:Parameter Name="Topic" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Fullname" Type="String" />
            <asp:Parameter Name="Topic" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>

