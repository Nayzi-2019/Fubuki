CREATE TABLE [dbo].[ClipInfo]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [channelId] NVARCHAR(200) NULL, 
    [url] NVARCHAR(200) NULL, 
    [uploadTime] DATETIME NULL, 
    [status] INT NULL, 
    [title] NVARCHAR(200) NULL, 
    [remark] NVARCHAR(500) NULL, 
    [relateId] INT NULL, 
    [tagId] INT NULL, 
    [createTime] DATETIME NULL
    
	
)
