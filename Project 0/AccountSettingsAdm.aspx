<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.master" AutoEventWireup="true" CodeFile="AccountSettingsAdm.aspx.cs" Inherits="AccountSettingsCos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2>

        <span style="font-weight: normal">Wellcome</span>   <asp:label runat="server" text="Label" ID="WellCome" ForeColor="#669900" style="text-decoration: underline"></asp:label>
    </h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style5">
        <tr>
            <td class="auto-style6" style="height: 26px">Confirm Password</td>

      <font color ="#CC6600">
            <td style="height: 26px">
                <asp:TextBox ID="Oldpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />    <br />
  
        </font>
  
    <table class="auto-style5" border="1">
        <tr>
            <td>
                <table class="auto-style5">
                    <tr>
                        <td colspan="2" class="auto-style6">Changing Password</td>
                      
                    </tr>
                    <tr>
                        <td class="auto-style6">New Password</td>

      <font color ="#CC6600">
                        <td>
                            <asp:TextBox ID="NewPass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 26px" class="auto-style6">Con Password</td>
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
            <td>
                <table class="auto-style5" style="width: 99%; height: 73px">
                    <tr>
                        <td colspan="2" class="auto-style6">Changing UserName/Email<br />
                        </td>
                    </tr>
        </font>
                    <tr>
                        <td class="auto-style6">New UserName/Email</td>

      <font color ="#CC6600">
                        <td>
                            <asp:TextBox ID="UsEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:Button ID="Update" runat="server" OnClick="Button3_Click" Text="Update" />
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
      <br />
      Delete Account?<br />
      Everything will be Erased Permently.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="DeleteAccount" runat="server" OnClick="DeleteAccount_Click" Text="DeleteAccount" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />


</asp:Content>

