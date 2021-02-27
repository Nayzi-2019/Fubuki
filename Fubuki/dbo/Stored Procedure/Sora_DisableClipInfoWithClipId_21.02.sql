CREATE PROCEDURE [dbo].[Sora_DisableClipInfoWithClipId_21.02]
	@clipId int = 0
AS
	UPDATE ClipInfo
	SET [status] = -1
	WHERE [Id] = @clipId
	
	UPDATE RelateInfo
	SET [enable] = 0
	WHERE [TargetClipId] = @clipId

	UPDATE TagInfo
	SET [enable] = 0
	WHERE [ClipId] = @clipId

RETURN 0
