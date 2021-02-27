CREATE PROCEDURE [dbo].[Sora_SearchRelateClips_21.02]
	@ClipId INT
AS
	SELECT c.[Id],c.[channelId],c.[url],c.[uploadTime],c.[status],c.[title],c.[remark],c.[createTime],c.[duration], ch.[channelName], ch.[channelIcon]
	FROM RelateInfo r WITH(NOLOCK)
	INNER JOIN ClipInfo c
	ON r.TargetClipId = c.Id
	AND r.OfficalClipId = @ClipId
	INNER JOIN ChannelInfo ch
	ON ch.channelId = c.[channelId]


RETURN 0
