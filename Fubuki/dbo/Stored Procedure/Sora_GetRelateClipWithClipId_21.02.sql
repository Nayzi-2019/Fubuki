CREATE PROCEDURE [dbo].[Sora_GetRelateClipWithClipId_21.02]
	@ClipId INT
AS
	SELECT c.[Id],c.[channelId],c.[url],c.[uploadTime],c.[status],c.[title],c.[remark],c.[createTime],c.[duration]
	FROM RelateInfo r WITH(NOLOCK)
	INNER JOIN ClipInfo c
	ON r.TargetClipId = c.Id
	AND r.OfficalClipId = @ClipId
	
	

RETURN 0
