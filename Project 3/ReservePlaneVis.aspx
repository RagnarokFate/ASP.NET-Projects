<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReservePlaneVis.aspx.cs" Inherits="ReservePlane" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <p style="text-decoration: underline" class="auto-style11">
        <font color="white"><strong><em>Reserve A Plane</em></strong></font></p>
    <table class="auto-style1">
        <tr>
            <td style="height: 23px; width: 407px; text-decoration: underline;" class="auto-style11"><strong><em>Country</em></strong></td>
            <td style="height: 23px">
                <strong><em>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11" style="text-decoration: underline"></asp:TextBox>
                </em></strong>
            </td>
        </tr>
        <tr>
            <td style="width: 407px; text-decoration: underline;" class="auto-style11"><strong><em>CityName</em></strong></td>
            <td>
                <strong><em>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style11" style="text-decoration: underline"></asp:TextBox>
                </em></strong>
            </td>
        </tr>
        <tr>
            <td style="width: 407px; text-decoration: underline;" class="auto-style11"><strong><em>Services</em></strong></td>
            <td>
                <strong><em>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style11" style="text-decoration: underline"></asp:TextBox>
                </em></strong>
            </td>
        </tr>
        <tr>
            <td style="width: 407px; text-decoration: underline;" class="auto-style11"><strong><em>Date</em></strong></td>
            <td>
                <strong><em>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style11" style="text-decoration: underline"></asp:TextBox>
                </em></strong>
            </td>
        </tr>
        <tr>
            <td style="width: 407px; text-decoration: underline;" class="auto-style11"><strong><em>Time</em></strong></td>
            <td>
                <strong><em>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style11" style="text-decoration: underline"></asp:TextBox>
                </em></strong>
            </td>
        </tr>
        <tr>
            <td colspan="1" style="width: 407px">
                <strong><em>
                <asp:Button ID="Button1" runat="server" Text="Continue" OnClick="Button1_Click" CssClass="auto-style11" style="text-decoration: underline" />
                <asp:label runat="server" text="Succes." ID="asd" ForeColor="Black" style="font-weight: 700; text-decoration: underline; " Visible="False" CssClass="auto-style11"></asp:label>
                </em></strong>
            <td>
            <font color="Red">
                <strong><em>
                <input id="Reset1" style="text-align: right; text-decoration: underline;" type="reset" value="reset" class="auto-style11" /></em></strong></font></td>
        </tr>
    </table>

    </form>

</asp:Content>

