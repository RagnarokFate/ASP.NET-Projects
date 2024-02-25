<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <center><h2>Contact</h2></center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
<br />
    <br />
    <h1>to join the list of photographers:</h1>
    <table border="1" style="width: 94%; height: 188px;">
        <tr>
            <td>Name</td>
            <td style="width: 618px">
                <asp:TextBox ID="NBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>number</td>
            <td style="width: 618px">
                <asp:TextBox ID="NumBox" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>area</td>
            <td style="width: 618px">
                <asp:DropDownList ID="DropDownList1" runat="server" >
                    <asp:ListItem>North</asp:ListItem>
                    <asp:ListItem>Center</asp:ListItem>
                    <asp:ListItem>South</asp:ListItem>
                </asp:DropDownList>
                        
            </td>

        </tr>
        <tr>
            <td style="height: 22px">Message</td>
            <td style="height: 22px; width: 618px">
                <asp:TextBox ID="TBox" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        </table>
    <br />
<br />
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="added!" Visible="False"></asp:Label>
    <br />
    <dir="rtl"></dir>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

