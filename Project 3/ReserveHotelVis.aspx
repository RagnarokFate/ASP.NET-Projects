<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReserveHotelVis.aspx.cs" Inherits="ReserveHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><Font size="28"><center>Hotel Reservation</center></Font>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p style="font-size: x-large; text-decoration: underline">
        <strong>&nbsp;<em><span class="auto-style11">Reserve A hotel:</span></em></strong></p>
    <p class="auto-style11" style="text-decoration: underline">
        &nbsp;</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style11" style="text-decoration: underline"><strong><em>Country</em></strong></td>
            <td>
                <strong><em>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11" style="text-decoration: underline"></asp:TextBox>
                </em></strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-decoration: underline"><strong><em>CityName</em></strong></td>
            <td>
                <strong><em>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style11" style="text-decoration: underline"></asp:TextBox>
                </em></strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-decoration: underline"><strong><em>Staries</em></strong></td>
            <td>
                <strong><em>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style11" style="text-decoration: underline">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                </em></strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-decoration: underline"><strong><em>Services&amp;Products</em></strong></td>
            <td>
                <strong><em>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style11" style="text-decoration: underline"></asp:TextBox>
                </em></strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-decoration: underline"><strong><em>Notes</em></strong></td>
            <td>
                <strong><em>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" CssClass="auto-style11" style="text-decoration: underline"></asp:TextBox>
                </em></strong>
            </td>
        </tr>
    </table>
    <p class="auto-style11" style="text-decoration: underline">
        &nbsp;</p>
    <p>
        <strong><em>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" CssClass="auto-style11" style="text-decoration: underline" />
        <span class="auto-style11" style="text-decoration: underline">&nbsp;&nbsp;
        </span>
        <asp:Label ID="Label1" runat="server" ForeColor="#663300" style="font-weight: 700; text-decoration: underline" Text="Sucsess." Visible="False" CssClass="auto-style11"></asp:Label>
        </em></strong>
    </p>
    <p>
        &nbsp;</p>
        </form>
</asp:Content>

