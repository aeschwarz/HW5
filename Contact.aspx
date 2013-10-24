<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <div>
    
    <div style="text-align: center">
    
        <h1>Wicked Easy Recipes</h1>
    
    </div>
    
    </div>
        <div style="text-align: center">
    
            <p>
                Using 5 Ingredients or Less</p>
    
    </div>
        <div class="auto-style1">
        <a href="Default.aspx"> <strong>Home </strong> </a> <strong>| </strong> <a href="NewRecipe.aspx"> <strong>New Recipe</strong></a><strong> | </strong> <a href="AboutUs.aspx"> <strong>About Us</strong></a><strong> | </strong> <a href="Contact.aspx"> <strong>Contact </strong> </a></div>
    <form id="form1" runat="server">
        <div>
    
            <div class="auto-style1">
                <br />
                Your Email Address:<br />
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="172px"></asp:TextBox>
                <br />
                <br />
                <br />
                Your Message: <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="148px" Width="318px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Send Message" />
                <br />
            </div>
            <h5 style="text-align: center">©&nbsp;2013.&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</h5>
    
    </div>
    </form>
</body>
</html>
