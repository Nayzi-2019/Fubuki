CREATE TABLE [dbo].[RelateInfo]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [TargetClipId] INT NULL, 
    [OfficalClipId] INT NULL, 
    [remark] NVARCHAR(500) NULL, 
    [enable] BIT NULL
)
