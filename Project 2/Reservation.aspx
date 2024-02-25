<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <center><h2>Reservation</h2></center>

        <br />
        <br />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
   <h1>Top photograPhers:</h1> 
    <br />
    <a href="Reservation.aspx#north">North</a>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <a href="Reservation.aspx#Center">Center</a><br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   <a href="Reservation.aspx#South">South</a><br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <a name="north">north</a><br />
    <br />
    <table style="width: 100%">
        <tr>
            <td>
                <img alt="Gilad Mashiah" src="Imgs/gilad.jpg" style="width: 300px; height: 300px" /></td>
            <td style="direction: ltr">
                <div style="font-family: 'Raleway', Arial, Helvetica, sans-serif; font-size: x-large; color: #000; direction: ltr;">
                    <strong>About Gilad Mashiah:</strong></div>
                <div style="direction: ltr">
                    <span style="font-size: x-large"><strong>Taking photos is a natural instinct that&nbsp;i&nbsp;have. For me, photography is not just about creating a strong image but even more about capturing the emotion behind it.&nbsp;</strong></span><strong><br style="font-size: x-large" />
                    </strong><span style="font-size: x-large"><strong>&nbsp;&nbsp;</strong></span><strong><br style="font-size: x-large" />
                    </strong><span style="font-size: x-large"><strong>The most rewarding part of my work is in the genuine interaction i have with people. It Enables me to showcase real feeling and new perspectives of reality through my photos.&nbsp;</strong></span><strong><br style="font-size: x-large" />
                    </strong>&nbsp;<strong><br style="font-size: x-large" />
                    </strong><span style="font-size: x-large"><strong>Join me in capturing precious moments with honesty, integrity and creativity. Let&#39;s do great things together, enjoy the journey with me.<br />
                    </strong></span>
                </div>
            </td>
        </tr>
    </table>
    <a name="north"><br />
   </a>
    <br />
    <br />
    <br />
<a name="Center">Center</a><br />
    <table style="width: 100%">
        <tr>
            <td>
                <img alt="Ori Chayun" src="Imgs/30083.jpg" style="width: 300px; height: 300px" /></td>
            <td><span style="font-size: x-large"><strong>&quot;Love what you do and it will be shown at your work&quot;&nbsp;</strong></span><strong><br style="font-size: x-large" />
                </strong>&nbsp;<strong><br style="font-size: x-large" />
                </strong><span style="font-size: x-large"><strong>My name is Ori and taking pictures is my passion and my biggest privilege, as I believe that if you&#39;re doing what you love, you will be fulfilled.&nbsp;</strong></span><strong><br style="font-size: x-large" />
                </strong>&nbsp;<strong><br style="font-size: x-large" />
                </strong><span style="font-size: x-large"><strong>In my work I&#39;m trying to create moments that are unique, artistic, funny, full of personality and most importantly.&nbsp;</strong></span><strong><br style="font-size: x-large" />
                </strong>&nbsp;<strong><br style="font-size: x-large" />
                </strong><span style="font-size: x-large"><strong>Please take a moment to check out my portfolio and I hope you genuinely feel the emotions captured in those fleeting but beautiful moments</strong></span></td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <a name="South">South</a><br />
    <table style="width: 100%">
        <tr>
            <td>
                <img alt="Lauren Newman" src="Imgs/lauren-newman-bio.jpg" style="width: 300px; height: 300px" /></td>
            <td><strong><span style="font-size: x-large">Hi! I&#39;m Lauren,&nbsp;</span><br style="font-size: x-large" />
                </strong>&nbsp;<strong><br style="font-size: x-large" />
                <span style="font-size: x-large">I was born in London but grew up along the gorgeous coast line of Southern France. Im soon to be married myself! to a tall, dark &amp; handsome Israeli man who shares my home &amp; heart with our furry dog baby, called Olive. We live in the vibrant city of Tel Aviv, but I love to travel and have been fortunate in capturing destination weddings across Europe.&nbsp;</span><br style="font-size: x-large" />
                </strong>&nbsp;<strong><br style="font-size: x-large" />
                <span style="font-size: x-large">Storyteller above all, photography is my pen of choice! My goal. To capture the mood that surrounds us all. Making it palpable. So that each image captures the essence, spirit and vibe of your day perfectly.<br />
                </span></strong></td>
        </tr>

        <br />
        <br />
        <br />
                <br />
    </table>
 <br />
 <br /> <br />
     <br />
 <br /> <br /> <br /> <br />
    <form>
        <br />
        <h1>For reservation:</h1>

        <table style="width: 100%; border-style: solid; border-width: 1px">
            <tr>
     
                <td>Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Event Date</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Event Time</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Event Location</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Photografher :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" style="width: 119px">
                        <asp:ListItem>Gilad Mashiah</asp:ListItem>
                        <asp:ListItem>Ori Chayun</asp:ListItem>
                        <asp:ListItem>Lauren Newman</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </form>
    </asp:Content>