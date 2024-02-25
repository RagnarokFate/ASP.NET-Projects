<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.master" AutoEventWireup="true" CodeFile="InsertProduct.aspx.cs" Inherits="InsertProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: x-small">
    Add new product
</p>
<p style="font-size: x-small">
    &nbsp;</p>
<table class="auto-style1" style="width: 433px; height: 383px">
    <tr>
        <td style="text-align: left; width: 1007px; font-size: large;" class="auto-style6"><span class="auto-style6">Id :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>
<br class="auto-style6" />
        </td>
        <td>
<asp:TextBox ID="TextBox1" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
        <
    </tr>
    <tr>
        <td style="text-align: left; width: 1007px;" class="auto-style2"><span class="auto-style6">Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span> 
            <br class="auto-style6" />
        </td>
        <td> <asp:TextBox ID="TextBox2" runat="server" style="font-size: medium" ></asp:TextBox>
            </td>
      
    </tr>
    <tr>
        <td class="auto-style4" style="width: 1007px; font-size: large">Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
<br />
            &nbsp;</td>
        <td> <asp:TextBox ID="TextBox3" runat="server" style="font-size: medium"></asp:TextBox>
        </td>
       
    </tr>
    <tr>
        <td class="auto-style6" style="width: 1007px; font-size: large">Image :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
        </td>
        <td class="auto-style7">
            <asp:FileUpload ID="FileUpload1" runat="server" style="font-size: small" />
        </td>
        
    </tr>
    <tr>
        <td class="auto-style4" style="width: 1007px; font-size: large">Category:&nbsp;&nbsp;
<br />
        </td>
        <td> <asp:TextBox ID="TextBox4" runat="server" style="font-size: medium"></asp:TextBox>
        </td>
       
    </tr>
    <tr>
        <td class="auto-style4" style="width: 1007px; font-size: large">Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>
<br />
        </td>
        <td>
<asp:TextBox ID="TextBox5" runat="server" style="font-size: medium; margin-top: 0px"></asp:TextBox>
        </td>
       
      
    </tr>
    <tr>
        <td class="auto-style6" style="height: 14px; width: 1007px;">            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Product" BackColor="#999999" CssClass="auto-style2"  /></td>
        <td style="height: 14px">            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" Width="94px" BackColor="#999999"  /></td>
      
    </tr>
    <tr>
        <td style="text-align: left; width: 1007px; font-size: large;" class="auto-style5">

            <span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>

            <br class="auto-style6" />
            <br class="auto-style6" />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style6"></asp:Label>
        </td>
        <td class="auto-style5"></td>
      
    </tr>
</table>
</asp:Content>

