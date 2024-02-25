<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCos.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    The Recipt:
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <asp:gridview runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="productID" DataSourceID="SqlDataSource1" EnableModelValidation="True" ID="GridView1">
        <Columns>
           
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="productID" HeaderText="productID" ReadOnly="True" SortExpression="productID" />
            <asp:BoundField DataField="productName" HeaderText="productName" ReadOnly="True" SortExpression="productName" />
            <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" SortExpression="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  DeleteText="Delete " EditText="Change Quantity" UpdateText="Accept"/>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:gridview>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ShoppingCartTbl] WHERE [productID] = ?" InsertCommand="INSERT INTO [ShoppingCartTbl] ([Email], [productID], [productName], [Price], [Quantity]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [ShoppingCartTbl]" UpdateCommand="UPDATE [ShoppingCartTbl] SET  [Quantity] = ? WHERE [productID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="productID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="productID" Type="String" />
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
        </InsertParameters>
        <UpdateParameters>

            <asp:Parameter Name="Quantity" Type="String" />
            
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <table class="auto-style5">
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Calculate The Recipt" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add More To Cart" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Cancel The Cart" />
            </td>
        </tr>
        <tr>
            <td>
    <strong>
        <asp:label id="Label6" runat="server" cssclass="auto-style14" style="text-decoration: underline" text="Total CheckUp :"></asp:label>
        <asp:label id="Label1" runat="server" cssclass="auto-style14" text="0"></asp:label>
        &nbsp;</strong></td>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Continue" OnClick="Button5_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>

