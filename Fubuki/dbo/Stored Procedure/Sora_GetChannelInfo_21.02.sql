CREATE PROCEDURE [dbo].[Sora_GetChannelInfo_21.02]
	@channelId NVARCHAR(200)
AS

	SELECT [Id],[channelId],[channelName],[lastUpdateTime],[remark],[isOffical],[channelIcon]
	FROM ChannelInfo WITH(NOLOCK)
	WHERE [channelId] = @channelId
RETURN 0



--	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
--    [channelId] NVARCHAR(200) NULL, 
--    [url] NVARCHAR(200) NULL, 
--    [uploadTime] DATETIME NULL, 
--    [status] INT NULL, 
--    [title] NVARCHAR(200) NULL, 
--    [remark] NVARCHAR(500) NULL, 
--    [relateId] INT NULL, 
--    [tagId] INT NULL