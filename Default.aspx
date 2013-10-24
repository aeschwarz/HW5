<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <h1>Wicked Easy Recipes</h1>
    
    </div>
        <div style="text-align: center">
    
            <p>
                Using 5 Ingredients or Less</p>
    
    </div>
        <div class="auto-style1">
            <a href="Default.aspx"> <strong>Home </strong> </a> <strong>| </strong> <a href="Recipe.aspx"> <strong>New Recipe</strong></a><strong> | </strong> <a href="AboutUs.aspx"> <strong>About Us</strong></a><strong> | </strong> <a href="Contact.aspx"> <strong>Contact </strong> </a></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_HW5 %>" SelectCommand="SELECT [Recipe], [SubmittedBy], [RecipeID] FROM [Table]" DeleteCommand="DELETE FROM [Table] WHERE [RecipeID] = @RecipeID" InsertCommand="INSERT INTO [Table] ([Recipe], [SubmittedBy]) VALUES (@Recipe, @SubmittedBy)" UpdateCommand="UPDATE [Table] SET [Recipe] = @Recipe, [SubmittedBy] = @SubmittedBy WHERE [RecipeID] = @RecipeID">
            <DeleteParameters>
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RecipeID" DataSourceID="SqlDataSource1" Height="220px" style="text-align: center" Width="616px">
            <Columns>
                <asp:BoundField DataField="Recipe" HeaderText="Recipe" SortExpression="Recipe" />
                <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" />
                <asp:HyperLinkField Text="Select" DataNavigateUrlFields="RecipeID" DataNavigateUrlFormatString="recipe.aspx?RecipeID={0}" />
            </Columns>
        </asp:GridView> 
    </form>
</body>
</html>
