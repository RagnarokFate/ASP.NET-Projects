<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="HomeAdmin.aspx.cs" Inherits="HomeAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <table class="auto-style1">
        <tr>
            <td>Photographers on deal<br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="FullName" DataSourceID="AccessDataSource1" EnableModelValidation="True">
                    <Columns>
                        <asp:BoundField DataField="FullName" HeaderText="FullName" ReadOnly="True" SortExpression="FullName" />
                        <asp:BoundField DataField="PhoneNum" HeaderText="PhoneNum" SortExpression="PhoneNum" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                        <asp:BoundField DataField="On/Off" HeaderText="On/Off" SortExpression="On/Off" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/UserDBP.mdb" SelectCommand="SELECT * FROM [MessageTbl]"></asp:AccessDataSource>
            </td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td style="color: #FFFFFF">FullName</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource2" DataTextField="FullName" DataValueField="FullName">
                            </asp:DropDownList>
                            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/UserDBP.mdb" SelectCommand="SELECT [FullName] FROM [MessageTbl]"></asp:AccessDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #FFFFFF">ON/OF</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem>On</asp:ListItem>
                                <asp:ListItem>Off</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #FFFFFF">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" />
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" style="color: #FFFFFF; font-size: x-large" Text="Change Status"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

