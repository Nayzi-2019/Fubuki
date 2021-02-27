CREATE PROCEDURE [dbo].[Sora_GetClipInfoWithChannelId_21.02]
	@channelId NVARCHAR(200),
	@maxId INT = -1
AS
	IF(@maxId = -1)
	BEGIN
		SELECT TOP 48 c.[Id],c.[channelId],c.[url],c.[uploadTime],c.[status],c.[title],c.[remark],c.[createTime],c.[duration], ch.[channelName], ch.[channelIcon]
		FROM ClipInfo c WITH(NOLOCK)
		LEFT JOIN ChannelInfo ch
		ON ch.[ChannelId] = c.[channelId]
		WHERE c.[status] > 0
		AND c.[channelId] = @channelId
		ORDER BY c.[createTime] desc
	END
	ELSE
	BEGIN
		SELECT TOP 48 c.[Id],c.[channelId],c.[url],c.[uploadTime],c.[status],c.[title],c.[remark],c.[createTime],c.[duration], ch.[channelName], ch.[channelIcon]
		FROM ClipInfo c WITH(NOLOCK)
		LEFT JOIN ChannelInfo ch
		ON ch.[ChannelId] = c.[channelId]
		WHERE c.[status] > 0
		AND c.[channelId] = @channelId
		AND c.[Id] < @maxId
		ORDER BY c.[createTime] desc
	END	
	
RETURN 0
