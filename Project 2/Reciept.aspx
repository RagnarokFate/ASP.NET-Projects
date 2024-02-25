<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="Reciept.aspx.cs" Inherits="Reciept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <span class="auto-style1" style="font-size: x-large">
    The Recipt Of Reserving A Photographer
    <br />
    </span>
    </span>
    <span class="auto-style10">
    <table style="width: 27%; height: 175px;">
        <tr>
            <td colspan="2" class="auto-style11">
    <asp:GridView runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EnableModelValidation="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="AccessDataSource1">
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
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/UserDBP.mdb" SelectCommand="SELECT * FROM [ReservePhoto]"></asp:AccessDataSource>
            </td>
            
        </tr>
    </span>
    <span class="auto-style1">
    <span class="auto-style10">
        <tr class="auto-style11">
            <td style="width: 448px">
    <asp:Button runat="server" Text="Continue" ID="Button1" OnClick="Button1_Click" ForeColor="#336600" />
            </td>
            <td style="width: 550px">
    <asp:Button runat="server" Text="Clear All The Recipt" ID="Button2" OnClick="Button2_Click" ForeColor="#CC0000" />
            </td>
        </tr>
    </table>
    </span>
    </span>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Content>

