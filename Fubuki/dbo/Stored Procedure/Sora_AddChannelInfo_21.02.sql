CREATE PROCEDURE [dbo].[Sora_AddChannelInfo_21.02]
	@channelId NVARCHAR(200),
	@channelName NVARCHAR(200),
	@lastUpdateTime DATETIME, 
	@tagId INT, 
	@remark NVARCHAR(500),
	@isOffical BIT
AS
	Declare @Id INT
--	Declare @tagId INT
--	Declare @relateId INT

	select @Id = [Id] from ChannelInfo WITH(NOLOCK)
	where [channelId] = @channelId
	
	
	IF @@ROWCOUNT = 0
	BEGIN
		INSERT INTO ChannelInfo ([channelId],[channelName],[lastUpdateTime],[tagId],[remark],[isOffical])
		values
		(@channelId,@channelName,@lastUpdateTime,@tagId,@remark,@isOffical)
		SET @Id = scope_identity();

		SELECT @Id AS Id, 1 as IsNew
	END
	ELSE
	BEGIN
		SELECT @Id AS Id, 0 as IsNew
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