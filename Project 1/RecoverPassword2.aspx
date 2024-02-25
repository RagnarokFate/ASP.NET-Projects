<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVS.master" AutoEventWireup="true" CodeFile="RecoverPassword2.aspx.cs" Inherits="RecoverPassword2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8 {
            text-align: left;
        }
          .auto-style15 {
            color: #0066FF;
        }
        .auto-style16 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <br />
        Fill The Security Quastion </p>
    <p style="text-align: center">
        &nbsp;</p>
    <p class="auto-style8">
        <span class="auto-style16">&nbsp;Quastion :&nbsp;</span>&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" >
            <asp:ListItem Text="Select Your  Security Quastion" Value="-1"></asp:ListItem>
            <asp:ListItem Text="What is your favorite Food Name?" Value="FFood"></asp:ListItem>
            <asp:ListItem Text="In what year was your father born? " Value="FatherBorn"></asp:ListItem>
            <asp:ListItem Text="In what city or town does your nearest sibling live? " Value="NearSibling"></asp:ListItem>
            <asp:ListItem Text=" What is your favorite movie? " Value="FMovie"></asp:ListItem>
            <asp:ListItem Text="What is the name of your favorite childhood friend?" Value="ChildFriend"></asp:ListItem>
            <asp:ListItem Text="What school did you first go to? " Value="FirstJob"></asp:ListItem>
        </asp:DropDownList>
         <span class="auto-style15">&nbsp;</span>
         <asp:RequiredFieldValidator ID="CheckSQ" runat="server" ErrorMessage="Please Select Your Quastion" ForeColor="Red" ControlToValidate="DropDownList1" Display="Dynamic" Text="*" InitialValue="-1" CssClass="auto-style15"></asp:RequiredFieldValidator>

    </p>
    <p class="auto-style8">
        <span class="auto-style16">Answer :&nbsp;&nbsp; </span>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="173px" MaxLength="12"></asp:TextBox>

    </p>
    <p class="auto-style8">
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>

    </p>
    <p style="text-align: center">
        <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" BackColor="#999999" />
    </p>
    <p style="text-align: center">
        &nbsp;</p>
</asp:Content>

