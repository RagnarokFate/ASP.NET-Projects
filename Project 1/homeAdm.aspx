<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.master" AutoEventWireup="true" CodeFile="homeAdm.aspx.cs" Inherits="homeAdm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
    Hello
</p>
<p>
    I am Admin</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="show" />
    </p>
</asp:Content>

