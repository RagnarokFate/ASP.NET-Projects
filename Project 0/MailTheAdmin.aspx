<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCos.master" AutoEventWireup="true" CodeFile="MailTheAdmin.aspx.cs" Inherits="MailTheAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <span class="auto-style10" style="font-size: xx-large">Chat With The Stuff</span>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <br class="auto-style10" style="font-size: x-large" />
    </strong><span class="auto-style10" style="font-size: x-large"><strong>Have Connection With The Stuff
    </strong></span>
    <br />
    <table class="auto-style5">
        <tr>
            <td>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style10"><strong>Subject:-</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10"><strong>Message</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                        </td>
                        <td>
                            <input id="Reset1" type="reset" value="reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                            <asp:Label ID="Sent" runat="server" ForeColor="#009900" Text="Sent Sucessfully." Visible="False"></asp:Label>
                            </strong></td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <br />
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="ClearChat" />
            </td>
        </tr>
    </table>

    <br />
</asp:Content>

