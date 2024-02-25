<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <br />
    Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <asp:GridView runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="AccessDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Photographer" HeaderText="Photographer" SortExpression="Photographer" />
            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
            <asp:BoundField DataField="EventDate" HeaderText="EventDate" SortExpression="EventDate" />
            <asp:BoundField DataField="EventTime" HeaderText="EventTime" SortExpression="EventTime" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/UserDBP.mdb" DeleteCommand="DELETE FROM [ReservePhoto] WHERE [EventDate] = ?" InsertCommand="INSERT INTO [ReservePhoto] ([FullName], [Email], [Photographer], [Area], [EventDate], [EventTime], [PhoneNumber]) VALUES (?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [ReservePhoto]" UpdateCommand="UPDATE [ReservePhoto] SET [FullName] = ?, [Email] = ?, [Photographer] = ?, [Area] = ?, [EventTime] = ?, [PhoneNumber] = ? WHERE [EventDate] = ?">
        <DeleteParameters>
            <asp:Parameter Name="EventDate" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Photographer" Type="String" />
            <asp:Parameter Name="Area" Type="String" />
            <asp:Parameter Name="EventDate" Type="String" />
            <asp:Parameter Name="EventTime" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Photographer" Type="String" />
            <asp:Parameter Name="Area" Type="String" />
            <asp:Parameter Name="EventTime" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="EventDate" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
    <span class="auto-style10" style="color: #009933; font-size: x-large"><strong>The Price Is </strong></span><strong>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style10" style="color: #009933; font-size: x-large" Text="Label"></asp:Label>
    <br />
    <br />
    </strong>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Continue" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

