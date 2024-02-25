<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddPlane.aspx.cs" Inherits="AddPlane" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Add A Plane To List:<br />
<table class="auto-style1">
    <tr>
        <td>
            <table class="auto-style1">
                <tr>
                    <td style="width: 184px">PlaneID</td>
                    <td style="width: 1135px">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px">PlaneCompany</td>
                    <td style="width: 1135px">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px; height: 26px">PlaneFrom</td>
                    <td style="width: 1135px; height: 26px">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px">PlaneTo</td>
                    <td style="width: 1135px">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px">DateOff</td>
                    <td style="width: 1135px">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="height: 22px; width: 184px">TimeOff</td>
                    <td style="height: 22px; width: 1135px">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px; height: 26px">DateReturn</td>
                    <td style="width: 1135px; height: 26px">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px">TimeReturnOff</td>
                    <td style="width: 1135px">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px">Price</td>
                    <td style="width: 1135px">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 184px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    </td>
                    <td style="width: 1135px"><strong>
                        <asp:Label ID="Label1" runat="server" Text="Added Sucsessfully." Visible="False"></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PlaneID" DataSourceID="AccessDataSource1" EnableModelValidation="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="PlaneID" HeaderText="PlaneID" InsertVisible="False" ReadOnly="True" SortExpression="PlaneID" />
                    <asp:BoundField DataField="PlaneCompany" HeaderText="PlaneCompany" SortExpression="PlaneCompany" />
                    <asp:BoundField DataField="PlaneFrom" HeaderText="PlaneFrom" SortExpression="PlaneFrom" />
                    <asp:BoundField DataField="PlaneTo" HeaderText="PlaneTo" SortExpression="PlaneTo" />
                    <asp:BoundField DataField="DateOff" HeaderText="DateOff" SortExpression="DateOff" />
                    <asp:BoundField DataField="TimeOff" HeaderText="TimeOff" SortExpression="TimeOff" />
                    <asp:BoundField DataField="DateReturn" HeaderText="DateReturn" SortExpression="DateReturn" />
                    <asp:BoundField DataField="TimeReturnOff" HeaderText="TimeReturnOff" SortExpression="TimeReturnOff" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/asadDataBase.mdb" DeleteCommand="DELETE FROM [PlanesTbl] WHERE [PlaneID] = ?" InsertCommand="INSERT INTO [PlanesTbl] ([PlaneID], [PlaneCompany], [PlaneFrom], [PlaneTo], [DateOff], [TimeOff], [DateReturn], [TimeReturnOff], [Price]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [PlanesTbl]" UpdateCommand="UPDATE [PlanesTbl] SET [PlaneCompany] = ?, [PlaneFrom] = ?, [PlaneTo] = ?, [DateOff] = ?, [TimeOff] = ?, [DateReturn] = ?, [TimeReturnOff] = ?, [Price] = ? WHERE [PlaneID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="PlaneID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PlaneID" Type="Int32" />
                    <asp:Parameter Name="PlaneCompany" Type="String" />
                    <asp:Parameter Name="PlaneFrom" Type="String" />
                    <asp:Parameter Name="PlaneTo" Type="String" />
                    <asp:Parameter Name="DateOff" Type="String" />
                    <asp:Parameter Name="TimeOff" Type="String" />
                    <asp:Parameter Name="DateReturn" Type="String" />
                    <asp:Parameter Name="TimeReturnOff" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PlaneCompany" Type="String" />
                    <asp:Parameter Name="PlaneFrom" Type="String" />
                    <asp:Parameter Name="PlaneTo" Type="String" />
                    <asp:Parameter Name="DateOff" Type="String" />
                    <asp:Parameter Name="TimeOff" Type="String" />
                    <asp:Parameter Name="DateReturn" Type="String" />
                    <asp:Parameter Name="TimeReturnOff" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                    <asp:Parameter Name="PlaneID" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>
        </td>
    </tr>
</table>
</asp:Content>

