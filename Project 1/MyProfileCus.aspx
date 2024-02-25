<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCus.master" AutoEventWireup="true" CodeFile="MyProfileCus.aspx.cs" Inherits="MyProfileCus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
            height: 30px;
            text-align: left;
        }
        .auto-style5 {
            height: 22px;
            text-align: left;
        }
        .auto-style7 {
            height: 30px;
            text-align: left;
            width: 680px;
        }
        .auto-style8 {
            height: 22px;
            text-align: left;
            width: 680px;
        }
        .auto-style11 {
            text-align: left;
            width: 680px;
        }
        .auto-style12 {
            height: 29px;
            text-align: center;
        }
        .auto-style16 {
            width: 680px;
        }
        .auto-style17 {
            width: 100%;
            border-collapse: collapse;
            height: 198px;
            border: 1px solid #000000;
        }
        .auto-style18 {
            height: 18px;
             border: 1px solid #000000;
            text-align: left;
        }
        .auto-style19 {
            height: 18px;
            border: 1px solid #000000;
            text-align: left;
            width: 675px;
        color: #FFFFFF;
    }
        .auto-style20 {
        color: #0066FF;
    }
    .auto-style21 {
        height: 18px;
        border: 1px solid #000000;
        text-align: left;
        color: #FF0000;
    }
        .auto-style22 {
            color: #FF0000;
        }
        .auto-style23 {
            width: 494px;
            height: 110px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
    <strong style="text-align: center; color: #FF0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </strong>
        <img alt="" class="auto-style23" src="images/MyProfile.jpg" /></h2>
    <p>
        &nbsp;</p>
<table class="auto-style1">
    <tr>
        <td class="auto-style12"><span class="auto-style20">Enter your Detail Here to make changes in your account
            </span>
            <br class="auto-style20" />
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><span class="auto-style22">&nbsp;&nbsp; Email / UserName&nbsp; :&nbsp;&nbsp;&nbsp;
            </span>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="auto-style22"></asp:TextBox>
            <span class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Courrent Password :&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="auto-style22"></asp:TextBox>
        </td>
    </tr>
</table>
    <p>
        &nbsp;</p>
    <table cellpadding="5" cellspacing="5" class="auto-style17" dir="ltr">
        <tr>
            <td class="auto-style19">&nbsp; &nbsp;
            <br />
                <span class="auto-style22">Change Password :-</span><br />
            </td>
            <td class="auto-style18">
            <br class="auto-style22" />
                <span class="auto-style22">Delete&nbsp; The Account :-</span><br class="auto-style22" />
&nbsp;<br class="auto-style22" />
            </td>
        </tr>
        <tr>
            <td class="auto-style19">New Password :&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
               
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                Confirm Your New Password :&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged" TextMode="Password"></asp:TextBox>
               
            &nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" forecolor="Red" operator="Equal" ErrorMessage="These Passwords Don't Match !"  ControlToValidate="TextBox6" ControlToCompare="TextBox5" Type="String"></asp:CompareValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style21">Note : You cant enter your acount again after you press it
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Change Password " />
            </td>
            <td class="auto-style18">
             
            <asp:Button ID="Button3" runat="server" Text="Delete Account" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><asp:Label ID="Label1" runat="server" Text="Label" Visible="False" style="text-align: left; color: #FF0000;"></asp:Label>
            </td>
            <td class="auto-style18">
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
<table class="auto-style1">
    <tr>
        <td class="auto-style7">
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </td>
        
        <td class="auto-style3">
            <br />
            <br />
&nbsp;&nbsp;
             
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td class="auto-style11">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center" class="auto-style16">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

