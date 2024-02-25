<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCus.master" AutoEventWireup="true" CodeFile="homeCus.aspx.cs" Inherits="homeCus" %>

<script runat="server">

   
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        height: 214px;
        width: 497px;
    }
    .auto-style6 {
        color: #FFFFFF;
        text-align: left;
    }
    .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style9 {
            color: #FF0000;
        }
        .auto-style10 {
            width: 358px;
            height: 57px;
        }
        .auto-style11 {
            color: #FF0000;
            text-align: left;
            width: 341px;
            height: 22px;
        }
        .auto-style12 {
            color: #FF0000;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style7">
        &nbsp;</p>
    <p class="auto-style7">
        <img alt="" class="auto-style10" src="images/icon.png" /></p>
    <p class="auto-style7">
        &nbsp;</p>
    <p class="auto-style7">
        <span class="auto-style12"><strong>Welcome&nbsp; </strong></span><strong>
        <asp:Label ID="Label2" runat="server" Text="label2" CssClass="auto-style12"></asp:Label>
    </strong><span class="auto-style12"><strong>&nbsp;to Your Own Account</strong></span></p>
<p class="auto-style7">
    <strong>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style12" ForeColor="red"></asp:Label>
    <span class="auto-style9">&nbsp;</span></strong></p>
<p class="auto-style7">
    <strong>
    <span class="auto-style9">Your Last LogIn Was At :&nbsp; </span>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style11"></asp:Label>
    </strong>
</p>
<p class="auto-style8">
    &nbsp;</p>
    <p class="auto-style8">
        &nbsp;</p>
    <p class="auto-style8">
        &nbsp;</p>
<p class="auto-style6">
    &nbsp;</p>
<p class="auto-style8">

    &nbsp;</p>
</asp:Content>

