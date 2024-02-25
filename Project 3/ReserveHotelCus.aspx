<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="ReserveHotelCus.aspx.cs" Inherits="ReserveHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><Font size="28"><center>Hotel Reservation</center></Font>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p style="font-size: x-large; text-decoration: underline">
        <strong>&nbsp;<em><span class="auto-style11">Reserve A hotel:</span></em></strong></p>
<br />
    <asp:gridview runat="server" ID="GridView1" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="HotelID" DataSourceID="AccessDataSource1" EnableModelValidation="True" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="HotelID" HeaderText="HotelID" InsertVisible="False" ReadOnly="True" SortExpression="HotelID" />
            <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
            <asp:BoundField DataField="HotelLocation" HeaderText="HotelLocation" SortExpression="HotelLocation" />
            <asp:BoundField DataField="HotelRate" HeaderText="HotelRate" SortExpression="HotelRate" />
            <asp:BoundField DataField="Price Per Night" HeaderText="Price Per Night" SortExpression="Price Per Night" />
            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Reserve It" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    </asp:gridview>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/asadDataBase.mdb" SelectCommand="SELECT * FROM [HotelsTbl]"></asp:AccessDataSource>
    Skip To Recipet <a href="Recipet.aspx">Click Here</a><br />        
</asp:Content>

