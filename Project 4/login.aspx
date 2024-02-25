<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 525px;
        }
        .auto-style18 {
            width: 113px;
            height: 81px;
            color: #EC0000;
            font-size: x-large;
            margin-top: 12px;
        }
        .auto-style19 {
            font-size: x-large;
        }
        .auto-style20 {
            color: #CC0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style18">
                <p>
                    username:
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style19"></asp:TextBox>
                </p>
                <p>
                    password:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="auto-style19"></asp:TextBox>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="Invailed Username/Password" Visible="False"></asp:Label>
                </p>
            </td>
            <td class="auto-style19"><span class="auto-style20">if you dont have username and password sign up</span><a href="sign%20up.aspx"><span class="auto-style20"> </span>here</a> </td>
        </tr>
    </table>
</asp:Content>

