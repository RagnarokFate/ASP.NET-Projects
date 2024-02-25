<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCos.master" AutoEventWireup="true" CodeFile="ProductsSale.aspx.cs" Inherits="Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Buy Musical Digital Machines
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br style="font-size: large" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="productId" DataSourceID="SqlDataSource1" EnableModelValidation="True" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: large" AllowSorting="True">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="productId" HeaderText="productId" ReadOnly="True" SortExpression="productId" />
            <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
            <asp:TemplateField HeaderText="Quantity" Visible="true">
                <ItemTemplate>
                <asp:TextBox ID="txtquantity" runat="server" Width="25px" Visible="true"></asp:TextBox>
                </ItemTemplate>
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Img">
                <ItemTemplate>
                <asp:Image ID="Picture" runat="server" Width="200" Height="200" ImageUrl='<%#Eval("image") %>'/></ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField SelectText="Add to Cart" ShowSelectButton="True" 
                    ButtonType="Button" />

        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#0099ff" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [productId], [productName], [price], [category] , [image] FROM [productsTbl]" ></asp:SqlDataSource>
    <br style="font-size: large" />
    <br style="font-size: large" />
    <strong>
    <asp:Label ID="Label1" runat="server" ForeColor="#006600" style="font-size: x-large" Text="Quantity Error ,Enter Less Number" Visible="False"></asp:Label>
    </strong>
    <br style="font-size: large" />
    <br style="font-size: large" />
</asp:Content>

