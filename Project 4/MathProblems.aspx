<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCos.master"  AutoEventWireup="true" CodeFile="MathProblems.aspx.cs" Inherits="MathProblems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h1>MathProblems</h1>
    <style type="text/css">
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            width: 249px;
        }
    </style>
    <style type="text/css">
        .auto-style4 {
            width: 248px;
        }
        .auto-style5 {
            width: 187%;
            height: 239px;
        }
        .auto-style6 {
            height: 38px;
        }
    </style>
    <style type="text/css">
        .auto-style5 {
            width: 218px;
        }
        .auto-style6 {
            width: 219px;
        }
        .auto-style7 {
            width: 309px;
        }
    </style>
    <style type="text/css">
        .auto-style5 {
            width: 237px;
        }
        .auto-style6 {
            width: 283px;
        }
        .auto-style7 {
            width: 416px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <table class="auto-style13">
        <tr>
            <td class="auto-style7">
    <asp:gridview ID="Gr2"  runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" EnableModelValidation="True" GridLines="Horizontal">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                </asp:gridview>
            &nbsp;</td>
            <td class="auto-style4">
                &nbsp;&nbsp; Having A MathProblem...?<br />
                <br />
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style6">FirstName</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>LastName</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Class</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="171px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Message</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="171px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Photo</td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="263px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click1" />
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server"  Text="Reset" OnClick="Button3_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </td>
        </tr>
    </table>

    <br />
    <br />

</asp:Content>

