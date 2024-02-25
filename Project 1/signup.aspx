<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVS.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 29px;
            color: #3399FF;
        }
        #Select1 {
            width: 56px;
        }
    .auto-style4 {
        font-size: large;
            height: 46px;
            text-align: center;
        }
        .auto-style5 {
            height: 27px;
            color: #FF0000;
        }
        .auto-style15 {
            color: #FF0000;
        }
        .auto-style16 {
            height: 29px;
            color: #FF0000;
        }
        .auto-style17 {
            height: 29px;
            color: #FF0000;
            width: 341px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                <h2><strong style="color: #FFFFFF; text-align: center">Register<br />
                    </strong></h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"> <span class="auto-style15">&nbsp;E-mail / UserName :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="12"  ></asp:TextBox>
                 <span class="auto-style15">&nbsp;
                 </span>
                 <asp:RequiredFieldValidator ID="CheckEmail" runat="server" ErrorMessage="Please Type Email" ForeColor="Red" ControlToValidate="TextBox1" Display="Dynamic" Text="* " CssClass="auto-style15"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server"  ForeColor="Red" CssClass="auto-style15"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><span class="auto-style15">Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" MaxLength="10" ></asp:TextBox>
                <span class="auto-style15">&nbsp;
              
            </span>
              
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><span class="auto-style15">re-password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                </span>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                 <span class="auto-style15">&nbsp;
                 </span>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" forecolor="Red" operator="Equal" ErrorMessage="These Passwords Don't Match , Please Try Again"  ControlToValidate="TextBox7" ControlToCompare="TextBox2" Type="String" CssClass="auto-style15"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><span class="auto-style15">&nbsp;First Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                </span>
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" ></asp:TextBox>
                                 &nbsp;
                                 <asp:RequiredFieldValidator ID="CheckFN" runat="server" ErrorMessage=" * " ForeColor="Red" ControlToValidate="TextBox3" Display="Dynamic" Text="* " CssClass="auto-style15"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style17"><span class="auto-style15">Last Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <asp:TextBox ID="TextBox4" runat="server" MaxLength="10" ></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="CheckLN" runat="server" ErrorMessage=" * " ForeColor="Red" ControlToValidate="TextBox4" Display="Dynamic" Text="* " CssClass="auto-style15"></asp:RequiredFieldValidator>

                 </td>
        </tr>
        <tr>
            <td class="auto-style16"><span class="auto-style15">city:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span> <asp:TextBox ID="TextBox5" runat="server" MaxLength="16" ></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="CheckCity" runat="server" ErrorMessage=" * " ForeColor="Red" ControlToValidate="TextBox5" Display="Dynamic" Text="* " CssClass="auto-style15"></asp:RequiredFieldValidator>

                 </td>
        </tr>
        <tr>
            <td class="auto-style15"><span class="auto-style15">Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </span> 
                <asp:DropDownList ID="DropDownList1" runat="server" >
                    <asp:ListItem Text="Select Gender" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>

                </asp:DropDownList>
                <span class="auto-style15">&nbsp;
                </span>
                <asp:RequiredFieldValidator ID="CheckGender" runat="server" ErrorMessage="Please Select Your Gender" ForeColor="Red" ControlToValidate="DropDownList1" Display="Dynamic" Text="*" InitialValue="-1" CssClass="auto-style15"></asp:RequiredFieldValidator>
            </td>
            </tr>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="#3399FF" style="color: #FF0000"></asp:Label>
                <br />
                <br />
            </td>
            <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" style="height: 26px" BackColor="#999999" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;<br />
            </td>
        </tr>
    </table>
</asp:Content>

