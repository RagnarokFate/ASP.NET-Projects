<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVS.master" AutoEventWireup="true" CodeFile="RecoverPassword3.aspx.cs" Inherits="RecoverPassword3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="text-align: center" class="auto-style8">
        Type A New Password</h2>
    <p style="text-align: left">
        <span class="auto-style8">Password :&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p style="text-align: left">
        <span class="auto-style8">Re-Password :</span>&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" forecolor="Red" operator="Equal" ErrorMessage="These Passwords Don't Match !"  ControlToValidate="TextBox1" ControlToCompare="TextBox2" Type="String"></asp:CompareValidator>

    </p>
    <p style="text-align: left">
        <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>

    </p>
    <p style="text-align: left">
        <asp:Button ID="Button1" runat="server" Text="Complete" OnClick="Button1_Click" BackColor="#999999" />
    </p>
</asp:Content>

