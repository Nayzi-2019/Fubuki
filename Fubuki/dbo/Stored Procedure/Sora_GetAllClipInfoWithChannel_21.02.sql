CREATE PROCEDURE [dbo].[Sora_GetAllClipInfoWithChannel_21.02]
AS
	SELECT c.[Id],c.[channelId],c.[url],c.[uploadTime],c.[status],c.[title],c.[remark],c.[createTime],c.[duration], ch.[channelName], ch.[channelIcon]
	FROM ClipInfo c WITH(NOLOCK)
	LEFT JOIN ChannelInfo ch
	ON ch.[ChannelId] = c.[channelId]
	WHERE c.[status] > 0
	ORDER BY c.[createTime] desc
RETURN 0
