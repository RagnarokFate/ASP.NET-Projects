<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCus.master" AutoEventWireup="true" CodeFile="UserPay.aspx.cs" Inherits="UserPay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
            height: 724px;
        }
        .style1
        {
            border-style: none;
            border-color: inherit;
            border-width: 2;
            width: 89%;
            height: 562px;
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
        text-align: left;
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
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style8 {
            width: 186px;
            text-align: center;
            font-size: x-large;
            height: 78px;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="Payment" CssClass="auto-style6"></asp:Label>
        <br class="auto-style6" />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="auto-style8">Total Price</td>
                <td class="style7">
                    <asp:Label ID="Label2" runat="server" style="font-size: large; color: #0066FF;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Visa No</td>
                <td class="style7">
                    <asp:TextBox ID="visaNoBox" runat="server" style="font-size: large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">AccNo</td>
                <td class="style7">
                    <asp:TextBox ID="accNoBox" runat="server" style="font-size: large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Visa Type</td>
                <td class="style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: large">
                        <asp:ListItem Text="Select Your Visa Type" Value="-1"></asp:ListItem>
                        <asp:ListItem>Mastercard</asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                    </asp:DropDownList>
               

                </td>
            </tr>
            <tr>
                <td class="auto-style8">Expiration Date</td>
                <td class="style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Calendar ID="Calendar1" runat="server" Height="67px" onselectionchanged="Calendar1_SelectionChanged" Width="451px" style="margin-left: 17px" BackColor="#E1DCC9"></asp:Calendar>
                    &nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" ForeColor="#0066FF" style="color: #FF0000"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" Height="35px" onclick="Button1_Click" style="text-align: center" Text="Pay" Width="113px" BackColor="#999999" />
                </td>
                <td class="style9">
                    <asp:Button ID="Button2" runat="server" Height="36px" onclick="Button2_Click" Text="Back" Width="114px" BackColor="#999999" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style10" colspan="2">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>

