<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="Recipet.aspx.cs" Inherits="Recipet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Recipet
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <table class="auto-style3">
        <tr>
            <td>Plane</td>
            <td>Hotel</td>
        </tr>
        <tr>
            <td style="height: 22px">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="PlaneID" DataSourceID="AccessDataSource1" EnableModelValidation="True">
                    <Columns>
                        <asp:BoundField DataField="PlaneID" HeaderText="PlaneID" ReadOnly="True" SortExpression="PlaneID" />
                        <asp:BoundField DataField="PlaneCompany" HeaderText="PlaneCompany" SortExpression="PlaneCompany" />
                        <asp:BoundField DataField="PlaneFrom" HeaderText="PlaneFrom" SortExpression="PlaneFrom" />
                        <asp:BoundField DataField="PlaneTo" HeaderText="PlaneTo" SortExpression="PlaneTo" />
                        <asp:BoundField DataField="DateOff" HeaderText="DateOff" SortExpression="DateOff" />
                        <asp:BoundField DataField="TimeOff" HeaderText="TimeOff" SortExpression="TimeOff" />
                        <asp:BoundField DataField="DateReturn" HeaderText="DateReturn" SortExpression="DateReturn" />
                        <asp:BoundField DataField="TimeReturnOff" HeaderText="TimeReturnOff" SortExpression="TimeReturnOff" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />

                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/asadDataBase.mdb" SelectCommand="SELECT * FROM [RecieptP]">
                </asp:AccessDataSource>
                <br />
                <br />
                <table class="auto-style3">
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Calculate Plane" OnClick="Button1_Click" />
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 22px">
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="HotelID" DataSourceID="AccessDataSource2" EnableModelValidation="True">
                    <Columns>
                        <asp:BoundField DataField="HotelID" HeaderText="HotelID" ReadOnly="True" SortExpression="HotelID" />
                        <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                        <asp:BoundField DataField="HotelLocation" HeaderText="HotelLocation" SortExpression="HotelLocation" />
                        <asp:BoundField DataField="HotelRate" HeaderText="HotelRate" SortExpression="HotelRate" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />

                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:GridView>
                 <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/asadDataBase.mdb" SelectCommand="SELECT * FROM [RecieptH]"></asp:AccessDataSource>
                <table class="auto-style3">
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Calculate Hotel" OnClick="Button2_Click" />
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>

    <asp:Panel ID="Panel1" runat="server" Visible="False">
        From :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    To&nbsp;&nbsp;&nbsp;&nbsp; :
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    <br />
        <table class="auto-style3">
        <tr>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Calculate Total" OnClick="Button3_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Continue" OnClick="Button4_Click" Visible="False" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Cancel" OnClick="Button5_Click" />
            </td>
        </tr>
    </table>
    </asp:Panel>

    
    <br />


</asp:Content>

