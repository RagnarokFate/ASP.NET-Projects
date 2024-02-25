<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCus.master" AutoEventWireup="true" CodeFile="contactUsCus.aspx.cs" Inherits="contactUsCus" %>
<script runat="server">
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
        color: #0066FF;
    }
    .auto-style6 {
        height: 22px;
    }
        .auto-style7 {
            color: #0066FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td style="text-align: left"><span class="auto-style7">Hello
            </span>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style7"></asp:Label>
            <br class="auto-style7" />
            </td>
    </tr>
    <tr>
        <td style="text-align: left">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left"><span class="auto-style7">Subject :&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:DropDownList ID="DropDownList1" runat="server" >
        <asp:ListItem Selected="True" Text="Select Your Main Topic"> </asp:ListItem>
        <asp:ListItem>  My Account</asp:ListItem>
        <asp:ListItem>  Products & services</asp:ListItem>
        <asp:ListItem>  Pay Basics</asp:ListItem>
        <asp:ListItem>  Payments</asp:ListItem>
        <asp:ListItem>  My Money</asp:ListItem>
        <asp:ListItem>  Merchant Services</asp:ListItem>
        <asp:ListItem>  Other</asp:ListItem>

    </asp:DropDownList></span>
        </td>
    </tr>
    <tr>
        <td style="text-align: left"><span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Massage :
            </span>
            <br />
            <br />
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="152px" TextMode="MultiLine" Width="288px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: left">&nbsp;<asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" BackColor="#999999" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" BackColor="#999999" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label1" runat="server" Text="Your Massage has sent , Thanks" Visible="False" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

