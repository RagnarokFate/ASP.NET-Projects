<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVS.master" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <br />
        Type Your Email Here To Complete
    </p>
    <p style="text-align: center">
        <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="208px"></asp:TextBox>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" BackColor="#999999" />
    </p>
</asp:Content>

