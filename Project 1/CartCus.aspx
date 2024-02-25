<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCus.master" AutoEventWireup="true" CodeFile="CartCus.aspx.cs" Inherits="CartCus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br />
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" AllowSorting="True" DataKeyNames="id" BackColor="#DBD4C1" ForeColor="#0066FF" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id"  Visible="False" ReadOnly="true" />
                <asp:BoundField DataField="productId" HeaderText="productId" SortExpression="productId" ReadOnly="true" />
                <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" ReadOnly="true" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"  ReadOnly="true" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                  <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" DeleteText="Delete " EditText="Change Quantity" UpdateText="Accept" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="Label7" runat="server" style="color: #FF0000"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" UpdateCommand="Update [ShoppingCartTbl] SET Quantity=@Quantity WHERE id = @id"  DeleteCommand="Delete From [ShoppingCartTbl] WHERE id = @id"  SelectCommand="SELECT  [id], [productId], [productName], [Price], [Quantity] FROM [ShoppingCartTbl] WHERE ([Email] = ?)" >
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Check Total" Width="136px" BackColor="#999999" />
        &nbsp;&nbsp;&nbsp; <strong>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="Total Price : " Visible="False"></asp:Label>
        </strong>&nbsp;<strong><asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="0" Visible="False"></asp:Label>
        </strong>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Check Out" BackColor="#999999" />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

