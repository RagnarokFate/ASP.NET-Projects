<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddHotel.aspx.cs" Inherits="AddHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Hotels Mangement
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td>HotelID</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>HotelName</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>HotelLocation</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>HotelRate</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Price Per Night</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Add Hotel" OnClick="Button1_Click" />
                        </td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="32px" ImageUrl="~/photos/SentSucces.png" Visible="False" Width="46px" />
                        </td>
                    </tr>
                </table>
                <br />
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="HotelID" DataSourceID="AccessDataSource1" EnableModelValidation="True" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="HotelID" HeaderText="HotelID" InsertVisible="False" ReadOnly="True" SortExpression="HotelID" />
                        <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                        <asp:BoundField DataField="HotelLocation" HeaderText="HotelLocation" SortExpression="HotelLocation" />
                        <asp:BoundField DataField="HotelRate" HeaderText="HotelRate" SortExpression="HotelRate" />
                        <asp:BoundField DataField="Price Per Night" HeaderText="Price Per Night" SortExpression="Price Per Night" />
                                                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />

                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/asadDataBase.mdb" DeleteCommand="DELETE FROM [HotelsTbl] WHERE [HotelID] = ?" InsertCommand="INSERT INTO [HotelsTbl] ([HotelID], [HotelName], [HotelLocation], [HotelRate], [Price Per Night]) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [HotelsTbl]" UpdateCommand="UPDATE [HotelsTbl] SET [HotelName] = ?, [HotelLocation] = ?, [HotelRate] = ?, [Price Per Night] = ? WHERE [HotelID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="HotelID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="HotelID" Type="Int32" />
                        <asp:Parameter Name="HotelName" Type="String" />
                        <asp:Parameter Name="HotelLocation" Type="String" />
                        <asp:Parameter Name="HotelRate" Type="String" />
                        <asp:Parameter Name="Price_Per_Night" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="HotelName" Type="String" />
                        <asp:Parameter Name="HotelLocation" Type="String" />
                        <asp:Parameter Name="HotelRate" Type="String" />
                        <asp:Parameter Name="Price_Per_Night" Type="String" />
                        <asp:Parameter Name="HotelID" Type="Int32" />
                    </UpdateParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>

</asp:Content>

