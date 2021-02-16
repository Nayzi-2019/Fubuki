CREATE TABLE [dbo].[globalsetting]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [key] NVARCHAR(100) NOT NULL, 
    [value] NVARCHAR(200) NULL, 
    [remark] NVARCHAR(500) NULL, 
    [enable] BIT NOT NULL, 
    [timestamp] DATETIME NULL, 
    [actiontaker] NVARCHAR(100) NULL
	
)
