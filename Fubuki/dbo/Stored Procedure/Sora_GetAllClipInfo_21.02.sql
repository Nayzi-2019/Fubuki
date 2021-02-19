CREATE PROCEDURE [dbo].[Sora_GetAllClipInfo_21.02]
AS
	SELECT [Id],[channelId],[url],[uploadTime],[status],[title],[remark],[createTime],[duration]
	FROM ClipInfo WITH(NOLOCK)

RETURN 0
