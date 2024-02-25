<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.master" AutoEventWireup="true" CodeFile="AdminsEdit.aspx.cs" Inherits="AdminsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
    Here , Admin&nbsp; can convert Admins to User</p>
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="userEmail" DataValueField="userEmail" Height="20px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT [userEmail] FROM [UserTbl] WHERE ([userType] = ?)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Admin" Name="userType" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
&nbsp;</p>
<p>
    Type The Secret Code :</p>
<p>
    &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Make Him User" BackColor="#999999" />
</p>
<p>
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>

