<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xNewRecipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="style.css" />
    <style type="text/css">
        #form1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div style="text-align: center">
    
        <h1>Wicked Easy Recipes</h1>
    
    </div>
    
    </div>
        <div style="text-align: center">
    
            <p>
                Using 5 Ingredients or Less!!</p>
    
    </div>
        <a href="Default.aspx"> <strong>Home </strong> </a> <strong>| </strong> <a href="NewRecipe.aspx"> <strong>New Recipe</strong></a><strong> | </strong> <a href="AboutUs.aspx"> <strong>About Us</strong></a><strong> | </strong> <a href="Contact.aspx"> <strong>Contact </strong> </a></strong> 
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_HW5 %>" DeleteCommand="DELETE FROM [Table] WHERE [RecipeID] = @RecipeID" InsertCommand="INSERT INTO [Table] ([Recipe], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@Recipe, @SubmittedBy, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Recipe] = @Recipe, [SubmittedBy] = @SubmittedBy, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [RecipeID] = @RecipeID">
            <DeleteParameters>
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="dv1" runat="server" AutoGenerateRows="False" DataKeyNames="RecipeID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="207px">
            <Fields>
                <asp:BoundField DataField="Recipe" HeaderText="Recipe" SortExpression="Recipe" />
                <asp:BoundField DataField="SubmittedBy" HeaderText="SubmittedBy" SortExpression="SubmittedBy" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient5" SortExpression="Ingredient5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <h5 style="text-align: center">©&nbsp;2013.&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</h5>
    </form>
</body>
</html>
