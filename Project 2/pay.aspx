<%@ Page Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="pay.aspx.cs" Inherits="CheckOut" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            border-style: none;
            border-color: inherit;
            border-width: 2;
            width: 89%;
            height: 562px;
            }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 186px;
            text-align: center;
            font-size: x-large;
        }
        .style4
        {
            font-size: x-large;
        }
        .style6
        {
            width: 186px;
            text-align: center;
            font-size: x-large;
            height: 78px;
        }
        .style7
        {
            font-size: x-large;
            height: 78px;
            width: 790px;
        }
        .style8
        {
            text-align: center;
            font-size: x-large;
            height: 81px;
        }
        .style9
        {
            font-size: x-large;
            height: 81px;
            width: 790px;
        }
        .style10
        {
            text-align: center;
            height: 244px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
      <asp:Label ID="Label1" runat="server" style="font-size: xx-large" 
            Text="Check Out"></asp:Label>
        <br />
        <table class="style1">
            <tr>
                <td class="style6">
                    Total Price</td>
                <td class="style7">
                    <asp:Label ID="Label2" runat="server" style="font-size: large" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Visa No</td>
                <td class="style7">
                    <asp:TextBox ID="visaNoBox" runat="server" style="font-size: large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    AccNo</td>
                <td class="style7">
                    <asp:TextBox ID="accNoBox" runat="server" style="font-size: large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Visa Type</td>
                <td class="style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: large">
                        <asp:ListItem>Mastercard</asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Expiration Date</td>
                <td class="style7">
                    <asp:Calendar ID="Calendar1" runat="server" Height="200px" 
                        onselectionchanged="Calendar1_SelectionChanged" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                    <asp:Label ID="Label7" runat="server"></asp:Label>
&nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" Height="35px" 
                        style="text-align: center" Text="Pay" Width="113px" 
                        onclick="Button1_Click" />
                </td>
                <td class="style9">
                    <asp:Button ID="Button2" runat="server" Height="36px" Text="cancel" 
                        Width="114px" onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style10" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    <br />
    <br />
    
    
    </div>

</asp:Content>

