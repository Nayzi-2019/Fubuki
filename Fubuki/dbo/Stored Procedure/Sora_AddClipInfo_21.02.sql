CREATE PROCEDURE [dbo].[Sora_AddClipInfo_21.02]
	@channelId NVARCHAR(200),
	@url NVARCHAR(200),
	@uploadTime DATETIME, 
	@status INT, 
	@title NVARCHAR(200), 
	@remark NVARCHAR(500)
AS
	Declare @clipId INT
	Declare @tagId INT
	Declare @relateId INT

	select @clipId = [ID],@tagId = [tagId],@relateId = [relateId] from ClipInfo WITH(NOLOCK)
	where [url] = @url

	IF @@ROWCOUNT = 0
	BEGIN
		INSERT INTO ClipInfo ([channelId],[url],[uploadTime],[status],[title],[remark],[createTime])
		values
		(@channelId,@url,@uploadTime,@status,@title,@remark,GETDATE())
		SET @clipId = scope_identity();

		SELECT @clipId AS clipId, 1 as NewClip
	END
	ELSE
	BEGIN
		SELECT @clipId AS clipId, 0 as NewClip
	END
	
	
	
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