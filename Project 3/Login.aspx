<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form2" name="form1" runat="server">
    <table align="center" class="auto-style1" style="width: 72%; height: 116px">
        
            <tr>
                <td style="width: 79px; font-size: xx-large; text-decoration: underline;"><b><em>userName:</em></b></td>
                <td>
                    <em>
                    <asp:TextBox ID="userBox" runat="server" Width="164px" CssClass="auto-style11" style="font-weight: bold; text-decoration: underline" ></asp:TextBox>
                    </em>
                </td>
            </tr>
            <tr>
                <td style="width: 79px; font-size: xx-large; text-decoration: underline;"><b><em>passWord:</em></b></td>
                <td colspan="2" rowspan="1">
                    <em>
                    <asp:TextBox ID="passBox" runat="server" TextMode="Password" Width="165px" CssClass="auto-style11" style="font-weight: bold; text-decoration: underline"></asp:TextBox>
                    </em>
                </td>
            </tr>
            <tr>
                <td style="width: 79px; font-size: x-large">
                    <em>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="auto-style11" style="font-weight: bold; text-decoration: underline" />
                    </em>
                </td>
                <td colspan="2">
                    <em>
    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" style="font-weight: bold; text-decoration: underline;" Text="Try Another Username/Password." Visible="False" CssClass="auto-style11"></asp:Label>
                    </em>
                </td>
            </tr>
       
    </table>
         </form>
    
</asp:Content>

