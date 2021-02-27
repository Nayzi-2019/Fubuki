CREATE PROCEDURE [dbo].[Sora_EnableClipInfoWithClipId_21.02]
	@clipId int = 0
AS
	UPDATE ClipInfo
	SET [status] = 2
	WHERE [Id] = @clipId
	
	UPDATE RelateInfo
	SET [enable] = 1
	WHERE [TargetClipId] = @clipId

	UPDATE TagInfo
	SET [enable] = 1
	WHERE [ClipId] = @clipId

RETURN 0
