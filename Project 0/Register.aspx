<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageViS.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="signup" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <span style="font-size: xx-large;" class="auto-style14"><strong>Register</strong></span>

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="color: #993300; font-size: xx-large"><strong>Register</strong></span>
    <br style="color: #993300" />
    <br style="color: #993300" />
    <br style="color: #993300" />

    <br style="color: #993300" />

    <table >
        <tr>
            <td style="color: #993300"> <span class="auto-style15"><span style="color: #993300">E-mail / UserName :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <br style="color: #993300" />
                <span style="color: #993300">&nbsp;
                 </span>
                 </span>
                <span style="color: #993300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                </td>
            <td> 
                <asp:TextBox ID="UserNBox" runat="server"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNBox" ErrorMessage="* Requested." Visible="False"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="color: #993300"><span ><span style="color: #993300">Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br style="color: #993300" />
                <span style="color: #993300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                </span>
                <span class="auto-style15" style="color: #993300">&nbsp;
              
            </span>
              
            </td>
            <td>
                <asp:TextBox ID="PassBox" runat="server" TextMode="Password"></asp:TextBox>
              
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassBox" ErrorMessage="* Requested." Visible="False"></asp:RequiredFieldValidator>
                </strong>
              
            </td>
        </tr>
        <tr>
            <td style="color: #993300"><span><span style="color: #993300">re-password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br style="color: #993300" />
                <span style="color: #993300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;
                 </span>
                 </span>
                </td>
            <td>
                <asp:TextBox ID="RePassBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="color: #993300"><span><span style="color: #993300">First Name :&nbsp;&nbsp;&nbsp;&nbsp;</span><br style="color: #993300" />
                <span style="color: #993300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span> </span>
                                 <span style="color: #993300">&nbsp;
                                 
            </span>
                                 
            </td>
            <td>
                <asp:TextBox ID="FNameBox" runat="server"></asp:TextBox>

                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FNameBox" ErrorMessage="* Requested." Visible="False"></asp:RequiredFieldValidator>
                </strong>

            </td>
        </tr>
        <tr>
            <td style="color: #993300"><span><span style="color: #993300">Last Name :&nbsp;&nbsp;&nbsp;&nbsp;</span><br style="color: #993300" />
                <span style="color: #993300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </span> <span style="color: #993300">&nbsp;
                            
                 </span>
                            
                 </td>
            <td>
                <asp:TextBox ID="LNameBox" runat="server"></asp:TextBox>

                 <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="LNameBox" ErrorMessage="* Requested." Visible="False"></asp:RequiredFieldValidator>
                </strong>

                 </td>
        </tr>
        <tr>
            <td style="color: #993300"><span><span style="color: #993300">city:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br style="color: #993300" />
                <span style="color: #993300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span> </span> <span style="color: #993300">&nbsp;
                            
                 </span>
                            
                 </td>
            <td>
                <asp:TextBox ID="cityBox" runat="server"></asp:TextBox>

                 <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cityBox" ErrorMessage="* Requested." Visible="False"></asp:RequiredFieldValidator>
                </strong>

                 </td>
        </tr>
        <tr>
            <td style="color: #993300"><span><span style="color: #993300">Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br style="color: #993300" />
                <span style="color: #993300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </span> 
                </span> 
                <span style="color: #993300" >&nbsp;
                </span>
            </td>
            <td >
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Gender Selection</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Requested." Visible="False"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="#3399FF" style="color: #FF0000" Visible="False">This Email/UserName isn&#39;t available. Check Other .</asp:Label>
                </td>
            <td>
                <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="The Passwords Doesnt Match Each Other." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" style="height: 26px" BackColor="#999999" />
            </td>
            <td >
                <asp:Label ID="Label4" runat="server" Text="*The Register is sucessfully done." Visible="False" ForeColor="#006600"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

