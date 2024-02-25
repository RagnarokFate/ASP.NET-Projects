<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sign up.aspx.cs" Inherits="sign_up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            color: #CC0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style17">
        <tr>
            <td class="auto-style18">first name:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">last name:</td>
            <td><asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">age:</td>
            <td><asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" MaxLength="100"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="age not approved" MaximumValue="18" MinimumValue="5" ControlToValidate="TextBox5" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">username:</td>
            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">password:</td>
            <td><asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">re-password:</td>
            <td><asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">course type:</td>
            <td><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>improvment</asp:ListItem>
            <asp:ListItem>prodigiouses</asp:ListItem>
        </asp:DropDownList>
            </td>
        </tr>
    </table>

    <p>
        <asp:Button ID="Button1" runat="server" Text="sign up" OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" BorderStyle="None" style="color: #FF0000" Text="this user already exists" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="welcome" Visible="False" ForeColor="#FF33CC"></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="write the same password" Visible="False"></asp:Label>
    </p>
</asp:Content>

