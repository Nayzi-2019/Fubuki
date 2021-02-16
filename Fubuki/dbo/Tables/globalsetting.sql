CREATE TABLE [dbo].[globalsetting]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[key] nvarchar(100) Not Null, 
    [value] NVARCHAR(500) NULL, 
    [remark] NVARCHAR(500) NULL, 
    [enable] BIT NULL, 
    [timestamp] TIMESTAMP NULL, 
    [actionTaker] NVARCHAR(100) NULL,

)


