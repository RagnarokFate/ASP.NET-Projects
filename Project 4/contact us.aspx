<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact us.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: xx-large;
        }
        .auto-style13 {
            width: 101%;
            height: 287px;
        }
        .auto-style14 {
            width: 437px;
        }
        .auto-style17 {
            width: 98px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
        <tr>
            <td class="auto-style14">
    <p class="auto-style9">
        tel: 0549310535</p>
    <p class="auto-style9">
        facebook: mathematics with sky</p>
    <p class="auto-style9">
        gmail:samakrem1707@gmail.com</p>
            </td>
            <td>
                <table class="auto-style13">
                    <tr>
                        <td class="auto-style17">FirstName</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">LastName</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Subject</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Message</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="40px" TextMode="MultiLine" Width="169px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" Width="76px" />
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" style="font-weight: 700; font-size: x-large" Text="Sent Success." Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

