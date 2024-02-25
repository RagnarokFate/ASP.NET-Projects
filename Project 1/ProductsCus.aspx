<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCus.master" AutoEventWireup="true" CodeFile="ProductsCus.aspx.cs" Inherits="ProductsCus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        color: #FFFFFF;
    }
        .auto-style6 {
            color: #0066FF;
        }
        .auto-style8 {
            color: #FF0000;
            width: 341px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <br />
    <br />
    <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style6">&nbsp;</span><span class="auto-style8">&nbsp; I am searching for :</span><span class="auto-style5">&nbsp;&nbsp;
    
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="category" 
            DataValueField="category" Height="16px" 
           onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="text-align: center" Width="169px">
        </asp:DropDownList>
    </span>
    <br />
    &nbsp;<br />
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
         ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [category] FROM [productTbl] GROUP BY [category]">
        </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>"
         ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT * FROM [productTbl] WHERE ([category]=?)">
       <SelectParameters>
                <asp:SessionParameter DefaultValue="computers" Name="category" 
                    SessionField="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" style="color: #0066FF; text-align: center;"></asp:Label>
    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
            style="text-align: center" EnableModelValidation="True" BackColor="#DAD5C2" ForeColor="Red">
            <Columns>
                <asp:BoundField DataField="productId" HeaderText="productId" 
                    SortExpression="productId" />
                <asp:BoundField DataField="productName" HeaderText="productName" 
                    SortExpression="productName" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                 <asp:TemplateField HeaderText="Quantity" Visible="true" SortExpression="Quantity">
                <ItemTemplate>
                <asp:TextBox ID="txtquantity" runat="server" Width="25px" Visible="true"></asp:TextBox>
                </ItemTemplate>
                </asp:TemplateField>    
                <asp:TemplateField HeaderText="">
                <ItemTemplate>
                <asp:Image ID="Picture" runat="server" Width="200" Height="200" ImageUrl='<%#Eval("image") %>'/></ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField SelectText="Add to Cart" ShowSelectButton="True" 
                    ButtonType="Button" />
            </Columns>
        </asp:GridView>
    <br />
    <br />
    <br />
    <br />
   <!-- <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/UserDB.accdb" 
            SelectCommand="SELECT [productId], [productName], [price],[image],[category] FROM [productsTbl] WHERE ([category] = ?)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="cold and flu" Name="category" 
                    SessionField="category" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/UserDB.accdb" 
            SelectCommand="SELECT DISTINCT [category] FROM [productsTbl]">
        </asp:AccessDataSource> -->
    <br />
    <br />
    <br />
  
</form>
  
</asp:Content>

