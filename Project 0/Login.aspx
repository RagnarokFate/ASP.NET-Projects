<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVis.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <span style="text-decoration: underline; " class="auto-style14">
        <Font Size="48" >Join Our Website!</Font></span> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span style="text-decoration: underline; color: #993300;">
        <font size="36"><strong>Login</strong></font></span>
    </p>
    <p>
        <strong>
       <marquee direction="right" style="font-size: x-large" > <asp:Label ID="Label4" runat="server" ForeColor="#006666" style="text-decoration: underline" Text="Login To Start For Reservation of Studio SetUP." Visible="False"></asp:Label></marquee>
        </strong>
    </p>
    <table style="width: 43%; height: 184px;">
        <tr>
            <td style="height: 29px"><span style="color: #993300">UserName/Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:TextBox ID="Email" runat="server" Width="176px" style="color: #993300" ></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Email" ErrorMessage="* Requested." Visible="False"></asp:RequiredFieldValidator>
                </strong>
                <br style="color: #993300" />
            </td>
      
        </tr>
        <tr>
            <td style="height: 16px"><span style="color: #993300">Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:TextBox ID="Password" runat="server" TextMode="Password" Width="173px" style="color: #993300"></asp:TextBox>
&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Password" ErrorMessage="* Requested." Visible="False"></asp:RequiredFieldValidator>
                </strong>
                <br style="color: #993300" />
            </td>
    
        </tr>
        <tr>
            <td style="height: 65px">
                <br />
                <br />
                <asp:Label ID="Check2" runat="server" ForeColor="Red" Text="*The UserName/Email or Password  is entered invailed." Visible="False"></asp:Label>
                <br />
            </td>
          
        </tr>
        <tr>
            <td style="height: 22px">
                &nbsp;</td>
          
        </tr>
        <tr>
            <td style="height: 30px">
                <asp:button runat="server" text="Login" ID="LoginBut" OnClick="Unnamed1_Click" Width="54px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Register.aspx">Dont Yet have an account? Create One Now.</a></td>
          
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>

