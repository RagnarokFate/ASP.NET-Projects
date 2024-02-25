<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCos.master" AutoEventWireup="true" CodeFile="AccountSettingsCos.aspx.cs" Inherits="AccountSettingsCos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2>

        <span style="font-weight: normal" class="auto-style10">Wellcome</span>   <asp:label runat="server" text="Label" ID="WellCome" ForeColor="#000066" style="text-decoration: underline" CssClass="auto-style10"></asp:label>
    </h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style5" border="1">
        <tr>
            <td style="color: #0099FF">Confirm Password</td>

      <font color ="#CC6600">
            <td>
                <asp:TextBox ID="Oldpass" runat="server" TextMode="Password" style="color: #99FF33"></asp:TextBox>
            </td>
        </tr>

    <br />    
  

    <table class="auto-style5" border="1">
        <tr>
            <td style="color: #99FF33">
                <table class="auto-style5" border="1">
                    <tr>
                        <td colspan="2" class="auto-style14">Changing Password</td>
                      
                    </tr>
                    <tr>
                        <td class="auto-style14">New Password</td>
                        <td>
                            <asp:TextBox ID="NewPass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 26px" class="auto-style14">Con Password</td>
                        <td style="height: 26px">
                            <asp:TextBox ID="ConPass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 26px">
    <asp:Button ID="Change" runat="server" Text="Update" OnClick="Change_Click"  />
                        </td>
                        <td style="height: 26px">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td style="color: #99FF33">
                <table class="auto-style5" style="width: 99%; height: 73px" border="1" >
                    <tr>
                        <td colspan="2" class="auto-style6" style="color: #0099FF">Changing UserName/Email<br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14" style="height: 28px">New UserName/Email</td>
                        <td style="height: 28px">
                            <asp:TextBox ID="UsEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br class="auto-style14" />
                            <asp:Button ID="Update" runat="server" OnClick="Button3_Click" Text="Update" CssClass="auto-style14" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
        </font>
    <br />
      &nbsp;<asp:Label ID="WrongPass" runat="server" ForeColor="#CC0000" Text="The Old Password Doesnt in Match ." Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="UnsEmail" runat="server" ForeColor="#CC0000" Text="Unsupported UserName/Email" Visible="False"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Updated" runat="server" ForeColor="#009900" Text="Successflly Updated." Visible="False"></asp:Label>
    <br />
      <br />
      <br />
      <br style="color: #993300" />
      <span class="auto-style14">Delete Account?</span><br class="auto-style14" />
      <span class="auto-style14">Everything will be Erased Permently.&nbsp;&nbsp;&nbsp;</span><span style="color: #993300">&nbsp;&nbsp;&nbsp;&nbsp;
      </span>
      <asp:Button ID="DeleteAccount" runat="server" OnClick="DeleteAccount_Click" Text="DeleteAccount" style="color: #993300" />
      <span style="color: #993300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <br style="color: #993300" />
    <br style="color: #993300" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />


</asp:Content>

