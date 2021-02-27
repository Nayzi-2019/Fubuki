CREATE PROCEDURE [dbo].[Sora_GetClipInfo_21.02]
	@url NVARCHAR(200)
AS
	SELECT [Id],[channelId],[url],[uploadTime],[status],[title],[remark],[duration],[createTime]
	FROM ClipInfo WITH(NOLOCK)
	WHERE [url] = @url AND [status] > 0

RETURN 0
