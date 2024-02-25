<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="AccountSettingsCos.aspx.cs" Inherits="AccountSettingsCos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2>

        <span style="font-weight: normal" class="auto-style10">Wellcome</span>   <asp:label runat="server" text="Label" ID="WellCome" ForeColor="#000066" style="text-decoration: underline" CssClass="auto-style10"></asp:label>
    </h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style5" border="1">
        <tr>
            <td style="color: #000000">Confirm Password</td>

      <font color ="#CC6600">
            <td>
                <asp:TextBox ID="Oldpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>

    <br style="color: #000000" />    
  

    <table class="auto-style5" border="1">
        <tr>
            <td style="color: #99FF33">
                <table class="auto-style5" border="1">
                    <tr>
                        <td colspan="2" class="auto-style14"><span style="color: #000000">Changing Password</td>
                      
                    </tr>
                    <tr>
                        <td class="auto-style14">New Password</span></td>
                        <td>
                            <asp:TextBox ID="NewPass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 26px; color: #000000;" class="auto-style14">Con Password</td>
                        <td style="height: 26px">
                            <asp:TextBox ID="ConPass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 26px">
    <asp:Button ID="Change" runat="server" Text="Update" OnClick="Change_Click"  />
                        </td>
                        <td style="height: 26px; color: #000000;">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td style="color: #99FF33">
                <table class="auto-style5" style="width: 99%; height: 73px" border="1" >
                    <tr>
                        <td colspan="2" class="auto-style6" style="color: #000000">Changing UserName/Email<br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14" style="height: 28px; color: #000000;">New UserName/Email</td>
                        <td style="height: 28px">
                            <asp:TextBox ID="UsEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br class="auto-style14" style="color: #000000" />
                            <asp:Button ID="Update" runat="server" OnClick="Button3_Click" Text="Update" CssClass="auto-style14" />
                        </td>
                        <td style="color: #000000">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
        </font>
    <br style="color: #000000" />
      &nbsp;<asp:Label ID="WrongPass" runat="server" ForeColor="#CC0000" Text="The Old Password Doesnt in Match ." Visible="False" style="color: #000000"></asp:Label>
    <span style="color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:Label ID="UnsEmail" runat="server" ForeColor="#CC0000" Text="Unsupported UserName/Email" Visible="False" style="color: #000000"></asp:Label>
    <br style="color: #000000" />
    <br style="color: #000000" />
    <asp:Label ID="Updated" runat="server" ForeColor="#009900" Text="Successflly Updated." Visible="False" style="color: #000000"></asp:Label>
    <br style="color: #000000" />
      <br style="color: #000000" />
      <br style="color: #000000" />
      <br style="color: #000000" />
      <span class="auto-style14" style="color: #000000">Delete Account?</span><br class="auto-style14" style="color: #000000" />
      <span class="auto-style14" style="color: #000000">Everything will be Erased Permently.&nbsp;&nbsp;&nbsp;</span><span style="color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;
      </span>
      <asp:Button ID="DeleteAccount" runat="server" OnClick="DeleteAccount_Click" Text="DeleteAccount" />



</asp:Content>

