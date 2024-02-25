<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="ReservationCus.aspx.cs" Inherits="Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <center><h2>Reservation</h2></center>

        <br />
        <br />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1>For reservation:</h1>
        <table style="width: 100%">
            <tr>
                <td> <table style="width: 100%; border-style: solid; border-width: 1px">
            <tr>
     
                <td>Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Event Date</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" Width="350px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Even Time</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator
    ID="regextxtSessionTime" runat="server"
    ControlToValidate="TextBox5"
    ValidationExpression="^([0-1][0-9]|[2][0-3]):([0-5][0-9])$"
    ErrorMessage="You must enter a valid time. Format: HH:MM"
    Display="Dynamic"
    SetFocusOnError="true">
  </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Even Location</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Photografher :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" style="width: 119px" DataSourceID="AccessDataSource1" AutoPostBack="True" DataTextField="FullName" DataValueField="FullName" >
                        <asp:ListItem>Gilad Mashiah</asp:ListItem>
                        <asp:ListItem>Ori Chayun</asp:ListItem>
                        <asp:ListItem>Lauren Newman</asp:ListItem>
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/UserDBP.mdb" SelectCommand="SELECT [FullName] FROM [PhotographersList]"></asp:AccessDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td>Type Of Photograph</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource3" DataTextField="Type" DataValueField="Type" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/UserDBP.mdb" SelectCommand="SELECT [Type] FROM [SetsPrices]"></asp:AccessDataSource>
                    <br />
&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>

                </td>
                <td>
                    <asp:ListView runat="server" DataKeyNames="Type" DataSourceID="AccessDataSource2" EnableModelValidation="True">
                        <AlternatingItemTemplate>
                            <li style="background-color: #FFFFFF;color: #284775;">Type:
                                <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
                                <br />
                                Hour:
                                <asp:Label ID="HourLabel" runat="server" Text='<%# Eval("Hour") %>' />
                                <br />
                                Price:
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                <br />
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #999999;">Type:
                                <asp:Label ID="TypeLabel1" runat="server" Text='<%# Eval("Type") %>' />
                                <br />
                                Hour:
                                <asp:TextBox ID="HourTextBox" runat="server" Text='<%# Bind("Hour") %>' />
                                <br />
                                Price:
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No data was returned.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">Type:
                                <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                                <br />Hour:
                                <asp:TextBox ID="HourTextBox" runat="server" Text='<%# Bind("Hour") %>' />
                                <br />Price:
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
<br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="background-color: #E0FFFF;color: #333333;">Type:
                                <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
                                <br />
                                Hour:
                                <asp:Label ID="HourLabel" runat="server" Text='<%# Eval("Hour") %>' />
                                <br />
                                Price:
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
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
                            <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">Type:
                                <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
                                <br />
                                Hour:
                                <asp:Label ID="HourLabel" runat="server" Text='<%# Eval("Hour") %>' />
                                <br />
                                Price:
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                <br />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/UserDBP.mdb" SelectCommand="SELECT * FROM [SetsPrices]"></asp:AccessDataSource>
                </td>
            </tr>
        </table>
    <br />
    <br />

       
        <br />
        <br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </form>
    </asp:Content>