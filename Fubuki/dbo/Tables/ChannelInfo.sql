CREATE TABLE [dbo].[ChannelInfo]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [channelId] NVARCHAR(200) NULL, 
    [channelName] NVARCHAR(200) NULL, 
    [lastUpdateTime] DATETIME NULL, 
    [remark] NVARCHAR(500) NULL, 
    [isOffical] BIT NULL, 
    [channelIcon] NVARCHAR(200) NULL
)
