CREATE PROCEDURE [dbo].[Sora_AddClipInfo_21.02]
	@channelId NVARCHAR(200),
	@url NVARCHAR(200),
	@uploadTime DATETIME, 
	@status INT, 
	@title NVARCHAR(200), 
	@remark NVARCHAR(500),
	@duration NVARCHAR(100)
AS
	Declare @clipId INT
	Declare @tagId INT
	Declare @relateId INT

	select @clipId = [ID]from ClipInfo WITH(NOLOCK)
	where [url] = @url

	IF @@ROWCOUNT = 0
	BEGIN
		INSERT INTO ClipInfo ([channelId],[url],[uploadTime],[status],[title],[remark],[createTime],[duration])
		values
		(@channelId,@url,@uploadTime,@status,@title,@remark,GETDATE(),@duration)
		SET @clipId = scope_identity();

		SELECT @clipId AS Id, 1 as IsNew
	END
	ELSE
	BEGIN
		SELECT @clipId AS Id, 0 as IsNew
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