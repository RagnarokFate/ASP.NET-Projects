<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVis.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <Font Size="48"  ><span class="auto-style14">Contact Us</span></Font>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <span style="font-size: xx-large; text-decoration: underline; color: #993300;"><strong>Contact By Message!</strong></span><br style="color: #993300; font-size: xx-large;" />
    <br style="color: #993300; font-size: xx-large;" />
    <span style="color: #993300; font-size: x-large; text-decoration: underline;">Contact Us</span>
    <br style="color: #993300; font-size: xx-large;" />
    <a name="message"><h3 style="color: #993300">Message Content</h3></a>
    <table style="width: 100%" border="2">
        <tr>
            <td style="height: 22px; color: #993300;">First Name</td>
            <td style="height: 22px">
                <asp:TextBox ID="FirstName" runat="server" style="color: #993300"></asp:TextBox>
                <br style="color: #993300" />
            </td>
        </tr>
        <tr>
            <td style="color: #993300">Last Name</td>
            <td>
                <asp:TextBox ID="LastName" runat="server" style="color: #993300"></asp:TextBox>
                <br style="color: #993300" />
            </td>
        </tr>
        <tr>
            <td style="color: #993300">Subject</td>
            <td>
                <asp:TextBox ID="Subject" runat="server" style="color: #993300"></asp:TextBox>
                <br style="color: #993300" />
            </td>
        </tr>
        <tr>
            <td style="height: 22px"><span style="color: #993300">Message</span><br style="color: #993300" />
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="MBox" runat="server" TextMode="MultiLine" style="color: #993300"></asp:TextBox>
                <br style="color: #993300" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="Button1_Click" style="color: #993300" Width="124px" />
                <span style="color: #993300">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Label ID="Sent" runat="server" ForeColor="#009933" Text="The Message Has Been Succsesfully Sent." Visible="False" style="color: #993300"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear Message" />
            </td>
        </tr>
       
    </table>
 
    <br style="color: #993300" />
 
    <br style="color: #993300" />
    <span style="font-size: x-large; color: #993300;">
 
 <a name="Contact"><em>CONTACT US</em></a></span><span style="font-size: x-large"><span style="color: #993300"><em>   

Please don’t hesitate to contact us for more details or questions

    </em>

    </span>

    <br style="color: #993300" />

</span>
    <br style="font-size: x-large; color: #993300;" />
    <span style="font-size: x-large; color: #993300;">M: </span><a href="mailto:contact@stmpdrecordingstudios.com"><span style="font-size: x-large; color: #993300;"><strong>contact@stmpdrecordingstudios.com</strong></span></a>
    <br style="color: #993300" />
    <br style="font-size: x-large; color: #993300;" />
    <span style="font-size: x-large"><span style="color: #993300">T: 020 - 668 61 61 
    </span> 
    <br style="color: #993300" />
</span>
    <br style="font-size: x-large; color: #993300;" />
    <span style="font-size: x-large"><span style="color: #993300">H.J.E. Wenckebachweg</span><br style="color: #993300" />
    </span><br style="font-size: x-large; color: #993300;" />
    <span style="font-size: x-large"><span style="color: #993300">68 
1114 AD Amsterdam

    </span>

    <br style="color: #993300" />

</span>
    <br style="font-size: x-large; color: #993300;" />
    <span style="font-size: x-large; color: #993300;">Copyright © STMPD recording studios 2017 </span>

</asp:Content>

