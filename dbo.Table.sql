CREATE TABLE [dbo].[Table]
(
	[Recipe] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [SubmittedBy] NVARCHAR(50) NOT NULL, 
    [Ingredient1] NVARCHAR(50) NOT NULL, 
    [Ingredient2] NVARCHAR(50) NULL, 
    [Ingredient3] NVARCHAR(50) NULL, 
    [Ingredient4] NVARCHAR(50) NULL, 
    [Ingredient5] NVARCHAR(50) NULL, 
    [Preparation] NVARCHAR(50) NOT NULL, 
    [Notes] NVARCHAR(50) NULL
)
