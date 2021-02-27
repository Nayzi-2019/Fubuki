CREATE PROCEDURE [dbo].[Sora_GetChannelOfficalInfo_21.02]
AS

	SELECT [Id],[channelId],[channelName],[lastUpdateTime],[remark],[isOffical],[channelIcon]
	FROM ChannelInfo WITH(NOLOCK)
	WHERE [isOffical] = 1
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