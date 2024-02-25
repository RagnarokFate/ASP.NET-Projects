<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="ReservePlaneCus.aspx.cs" Inherits="ReservePlane" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p style="text-decoration: underline; color: #000000;" class="auto-style11">
        <strong><em>Reserve A Plane</em></strong></p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PlaneID" DataSourceID="AccessDataSource1" EnableModelValidation="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="PlaneID" HeaderText="PlaneID" InsertVisible="False" ReadOnly="True" SortExpression="PlaneID" />
            <asp:BoundField DataField="PlaneCompany" HeaderText="PlaneCompany" SortExpression="PlaneCompany" />
            <asp:BoundField DataField="PlaneFrom" HeaderText="PlaneFrom" SortExpression="PlaneFrom" />
            <asp:BoundField DataField="PlaneTo" HeaderText="PlaneTo" SortExpression="PlaneTo" />
            <asp:BoundField DataField="DateOff" HeaderText="DateOff" SortExpression="DateOff" />
            <asp:BoundField DataField="TimeOff" HeaderText="TimeOff" SortExpression="TimeOff" />
            <asp:BoundField DataField="DateReturn" HeaderText="DateReturn" SortExpression="DateReturn" />
            <asp:BoundField DataField="TimeReturnOff" HeaderText="TimeReturnOff" SortExpression="TimeReturnOff" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:ButtonField ButtonType="Button" CommandName="Select" Text="ReserveIt" />

        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/asadDataBase.mdb" SelectCommand="SELECT * FROM [PlanesTbl]"></asp:AccessDataSource>
    <br />
    Skip To <a href="ReserveHotelCus.aspx">ReserveHotel</a><br />
    <br />

    

</asp:Content>

