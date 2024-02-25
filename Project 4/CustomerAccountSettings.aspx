<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCos.master" AutoEventWireup="true" CodeFile="CustomerAccountSettings.aspx.cs" Inherits="CustomerAccountSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Account Setting
    <style type="text/css">
        .auto-style5 {
            width: 477px;
            text-align: right;
        }
        .auto-style6 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style5">Enter Your Old Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Enter The New Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Enter The New Password(Confirmation)</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Change The Password" Width="152px" />
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" ForeColor="#009900" style="font-weight: 700; font-size: x-large" Text="Changed Succsessfully" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

