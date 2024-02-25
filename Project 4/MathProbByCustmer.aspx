<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="MathProbByCustmer.aspx.cs" Inherits="MathProbByCustmer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Problems By Customers
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="auto-style1">
        <tr>
            <td style="color: #FFFFFF; width: 592px" class="auto-style2">Probllems Table</td>
            <td style="color: #FFFFFF" class="auto-style2">Submit A Solve?</td>
        </tr>
        <tr>
            <td style="width: 592px">
    <asp:GridView runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            <asp:BoundField DataField="MessageBy" HeaderText="MessageBy" SortExpression="MessageBy" />


              <asp:TemplateField HeaderText="Image MathProb">
                <ItemTemplate>
                <asp:Image ID="MathProb" runat="server" Width="200" Height="200" ImageUrl='<%#Eval("Photo") %>'/></ItemTemplate>
                </asp:TemplateField>     
                   <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#66FF33" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/ServiceData.mdb" SelectCommand="SELECT * FROM [MathProb]"></asp:AccessDataSource>
            </td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td style="height: 22px">Username</td>
                        <td style="height: 22px">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource2" DataTextField="Username" DataValueField="Username">
                            </asp:DropDownList>
                            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/ServiceData.mdb" SelectCommand="SELECT [Username] FROM [MathProb]"></asp:AccessDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 22px">Subject</td>
                        <td style="height: 22px">
                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Photo</td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" ForeColor="#009900" Text="Send It" Visible="False"></asp:Label>
                        </td>
                        
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

