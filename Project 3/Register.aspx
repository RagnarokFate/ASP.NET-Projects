<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <Font size="28"><center>Register</center></Font>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <form id="form1" runat="server" style="font-weight: 700; font-style: italic; text-decoration: underline; font-size: xx-large">
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Register"></asp:Label>
    <Font size="28"color="white"><br /></Font>
    <br />
    <table class="auto-style1" style="height: 185px; width: 62%">
        <tr>
            <td>Username<br />
            </td>
            <td>
                <asp:TextBox name="A7md" ID="TextBox1" runat="server" Width="165px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>FullName<br />
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="167px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>Password<br />
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="165px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>Re-Password<br />
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="163px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <br />
            </td>
            <td>
                <input id="Reset1" type="reset" value="reset" /></td>
        </tr>
    </table>
        <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" style="font-size: x-large; font-weight: 700; text-decoration: underline" Text="Passwords Doesn't Match!" Visible="False"></asp:Label>
    <br />
        <asp:Label ID="Label3" runat="server" ForeColor="#009900" style="font-size: x-large; font-weight: 700; text-decoration: underline" Text="Succses." Visible="False"></asp:Label>
    <br />
    </font>
&nbsp;
    <br />
    </form>
</asp:Content>


