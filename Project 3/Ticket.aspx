<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ticket.aspx.cs" Inherits="Ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
<script type ="text/javascript">
    window.print();
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>Plane Ticket</td>
                <td>Hotel Ticket</td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="PlaneID" DataSourceID="AccessDataSource1" EnableModelValidation="True" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="PlaneID" HeaderText="PlaneID" ReadOnly="True" SortExpression="PlaneID" />
                            <asp:BoundField DataField="PlaneCompany" HeaderText="PlaneCompany" SortExpression="PlaneCompany" />
                            <asp:BoundField DataField="PlaneFrom" HeaderText="PlaneFrom" SortExpression="PlaneFrom" />
                            <asp:BoundField DataField="PlaneTo" HeaderText="PlaneTo" SortExpression="PlaneTo" />
                            <asp:BoundField DataField="DateOff" HeaderText="DateOff" SortExpression="DateOff" />
                            <asp:BoundField DataField="TimeOff" HeaderText="TimeOff" SortExpression="TimeOff" />
                            <asp:BoundField DataField="DateReturn" HeaderText="DateReturn" SortExpression="DateReturn" />
                            <asp:BoundField DataField="TimeReturnOff" HeaderText="TimeReturnOff" SortExpression="TimeReturnOff" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/asadDataBase.mdb" SelectCommand="SELECT * FROM [RecieptP]"></asp:AccessDataSource>
                </td>
                <td>
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="HotelID" DataSourceID="AccessDataSource2" EnableModelValidation="True" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="HotelID" HeaderText="HotelID" ReadOnly="True" SortExpression="HotelID" />
                            <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                            <asp:BoundField DataField="HotelLocation" HeaderText="HotelLocation" SortExpression="HotelLocation" />
                            <asp:BoundField DataField="HotelRate" HeaderText="HotelRate" SortExpression="HotelRate" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/asadDataBase.mdb" SelectCommand="SELECT * FROM [RecieptH]"></asp:AccessDataSource>
                </td>
            </tr>
        </table>
    <div>
    
        <br />
        Thanks
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;.<br />
        Hope You Enjoyed Using Our Service :D<br />
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <input type="button" value="Print" onclick="window.print();">


                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Back To Home" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
