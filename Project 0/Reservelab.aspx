<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCos.master" AutoEventWireup="true" CodeFile="Reservelab.aspx.cs" Inherits="Reservelab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <br />
    Reserve The Lab Producer :D
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style5">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" EnableModelValidation="True" GridLines="Horizontal">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
            <td>
                <br />
    <table class="auto-style5">
        <tr>
            <td style="height: 22px">Date</td>
            <td style="height: 22px">
                <asp:TextBox ID="txtDOE1" runat="server" AutoPostBack="True" OnTextChanged="txtDOE1_TextChanged"></asp:TextBox>

<asp:RegularExpressionValidator ID="revDOE1" runat="server" ControlToValidate="txtDOE1"
ErrorMessage="Wrong Date Format" ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 25px">Day</td>
            <td style="height: 25px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Sunday</asp:ListItem>
                    <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>Wensday</asp:ListItem>
                    <asp:ListItem>Thirsday</asp:ListItem>
                    <asp:ListItem>Satrday</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Reserve" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="Unavailable Date,Try Other." Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br />

    <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Reservation" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <AlternatingItemTemplate>
                        <li style="background-color: #FFFFFF;color: #284775;">Reservation:
                            <asp:Label ID="ReservationLabel" runat="server" Text='<%# Eval("Reservation") %>' />
                            <br />
                            Price Per Days:
                            <asp:Label ID="Price_Per_DaysLabel" runat="server" Text='<%# Eval("[Price Per Days]") %>' />
                            <br />
                        </li>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <li style="background-color: #999999;">Reservation:
                            <asp:Label ID="ReservationLabel1" runat="server" Text='<%# Eval("Reservation") %>' />
                            <br />
                            Price Per Days:
                            <asp:TextBox ID="Price_Per_DaysTextBox" runat="server" Text='<%# Bind("[Price Per Days]") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </li>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        No data was returned.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="">Reservation:
                            <asp:TextBox ID="ReservationTextBox" runat="server" Text='<%# Bind("Reservation") %>' />
                            <br />Price Per Days:
                            <asp:TextBox ID="Price_Per_DaysTextBox" runat="server" Text='<%# Bind("[Price Per Days]") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </li>
                    </InsertItemTemplate>
                    <ItemSeparatorTemplate>
<br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li style="background-color: #E0FFFF;color: #333333;">Reservation:
                            <asp:Label ID="ReservationLabel" runat="server" Text='<%# Eval("Reservation") %>' />
                            <br />
                            Price Per Days:
                            <asp:Label ID="Price_Per_DaysLabel" runat="server" Text='<%# Eval("[Price Per Days]") %>' />
                            <br />
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">Reservation:
                            <asp:Label ID="ReservationLabel" runat="server" Text='<%# Eval("Reservation") %>' />
                            <br />
                            Price Per Days:
                            <asp:Label ID="Price_Per_DaysLabel" runat="server" Text='<%# Eval("[Price Per Days]") %>' />
                            <br />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [ReservationDetails]"></asp:SqlDataSource>
                <br />
            </td>

        </tr>
    </table>
    
</asp:Content>

