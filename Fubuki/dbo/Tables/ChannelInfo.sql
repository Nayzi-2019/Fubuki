CREATE TABLE [dbo].[ChannelInfo]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [channelId] NVARCHAR(200) NULL, 
    [channelName] NVARCHAR(200) NULL, 
    [lastUpdateTime] DATETIME NULL, 
    [tagId] INT NULL, 
    [remark] NVARCHAR(500) NULL, 
    [isOffical] BIT NULL
)
