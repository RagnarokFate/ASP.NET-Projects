<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.master" AutoEventWireup="true" CodeFile="ProductsAdm.aspx.cs" Inherits="ProductsAdm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br class="auto-style4" />
<br class="auto-style4" />
    <span class="auto-style4" >Edit Products</span><br class="auto-style4" />
    <br class="auto-style4" />
    <br class="auto-style4" />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" DataKeyNames="productId" >
    <Columns>
        <asp:BoundField DataField="productId" HeaderText="productId" SortExpression="productId" ReadOnly="true" />
        <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" ReadOnly="true"  />
        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />

    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" UpdateCommand="Update [productTbl] SET productName=@productName , price=@price , category=@category , quantity=@quantity  WHERE productId = @productId"  DeleteCommand="Delete From [productTbl] WHERE productId = @productId" SelectCommand="SELECT * FROM [productTbl]" ></asp:SqlDataSource>
    <br />
</asp:Content>

