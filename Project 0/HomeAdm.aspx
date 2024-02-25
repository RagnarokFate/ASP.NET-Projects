<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.master" AutoEventWireup="true" CodeFile="HomeAdm.aspx.cs" Inherits="HomeAdm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

        <span style="font-size: x-large">Home Page
</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style6">
        &nbsp;</p>
    <p>
        <strong>
        <img src="Djs%20full%20sets%20pictures/admin.jpg" style="width: 225px; height: 225px" class="auto-style6" /></strong><span class="auto-style6"> </span>

    </p>
        <strong>
        <marquee style="font-size: x-large" > Your An Admin In This Website :) </marquee></strong>
    <table class="auto-style3">
        <tr>
            <td>
    <a name="MessageBox"><span class="auto-style2">Contact Box</span></a>

                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [MailReceiver]"></asp:SqlDataSource>

                <br />
                <asp:Button ID="Button3" runat="server" ForeColor="Maroon" OnClick="Button3_Click" Text="Clear Chat." />
                <br />

        </td>
            <td>
                <span style="text-decoration: underline; font-size: x-large"><strong><span class="auto-style8">Customers Connection</span> Touch</strong></span> 
                <table class="auto-style3">
                    <tr>
                        <td style="width: 377px" class="auto-style6">UserName</td>
                        <td style="width: 195px">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [UserName] FROM [MailReceiver]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 377px" class="auto-style6">Subject</td>
                        <td style="width: 195px">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 377px" class="auto-style6">Message</td>
                        <td style="width: 195px">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 377px; height: 34px;">
                            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Sent" runat="server" CssClass="auto-style2" ForeColor="#006600" Visible="False">Confirmed! .</asp:Label>
                            </strong>
                        </td>
                        <td style="width: 195px; height: 34px;">
                            <input id="Reset1" type="reset" value="reset" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
        



    <br />
        STMPD RCRDS Mangement ©
    <p>
    </p>
</asp:Content>

