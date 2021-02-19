CREATE TABLE [dbo].[TagInfo]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ClipId] INT NULL, 
    [value] NVARCHAR(100) NULL, 
    [enable] BIT NULL, 
    [remark] NVARCHAR(500) NULL, 
    [tagType] INT NULL
)
