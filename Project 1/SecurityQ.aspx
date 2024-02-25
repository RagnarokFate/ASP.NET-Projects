<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVS.master" AutoEventWireup="true" CodeFile="SecurityQ.aspx.cs" Inherits="SecurityQ" %>

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
        <span class="auto-style16">You Are About To Complete The Process</span></p>
    <p style="text-align: center">
        <asp:Label ID="Label2" runat="server" style="color: #FF0000"></asp:Label>
    </p>
    <p style="text-align: center" class="auto-style16">
        &nbsp;</p>
    <p class="auto-style8">
        &nbsp;<span class="auto-style16">Quastion :&nbsp;</span>&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" >
            <asp:ListItem Text="Select A Quastion" Value="-1"></asp:ListItem>
            <asp:ListItem Text="What is your favorite Food Name?" Value="FFood"></asp:ListItem>
            <asp:ListItem Text="In what year was your father born? " Value="FatherBorn"></asp:ListItem>
            <asp:ListItem Text="In what city or town does your nearest sibling live? " Value="NearSibling"></asp:ListItem>
            <asp:ListItem Text=" What is your favorite movie? " Value="FMovie"></asp:ListItem>
            <asp:ListItem Text="What is the name of your favorite childhood friend?" Value="ChildFriend"></asp:ListItem>
            <asp:ListItem Text="What school did you first go to? " Value="FirstJob"></asp:ListItem>
        </asp:DropDownList>
         <span class="auto-style15">&nbsp;</span>
        <asp:RequiredFieldValidator ID="CheckQuastion" runat="server" ErrorMessage="Please Select A Quastion" ForeColor="Red" ControlToValidate="DropDownList1" Display="Dynamic" Text="*" InitialValue="-1" CssClass="auto-style15"></asp:RequiredFieldValidator>

    </p>
    <p class="auto-style8">
        <span class="auto-style16">Answer :&nbsp;&nbsp;</span> &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="173px" MaxLength="12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CheckAnswer" runat="server" ErrorMessage="Please Enter An Answer" ForeColor="Red" ControlToValidate="TextBox1" Display="Dynamic" Text="*"  CssClass="auto-style15"></asp:RequiredFieldValidator>

    </p>
    <p class="auto-style8">
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>

    </p>
    <p style="text-align: center">
        <asp:Button ID="Button1" runat="server" Text="Complete" OnClick="Button1_Click" BackColor="#999999" />
    </p>
</asp:Content>

