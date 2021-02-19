CREATE PROCEDURE [dbo].[Sora_AddRelateInfo_21.02]
	@TargetClipId int = -1,
	@OfficalClipId int = -1
AS
	
	IF(@TargetClipId<>-1)
	BEGIN
		DECLARE @Id INT
		SELECT @Id = [Id] FROM RelateInfo
		WHERE [TargetClipId] = @TargetClipId AND [OfficalClipId] = @OfficalClipId

		IF @@ROWCOUNT = 0
		BEGIN
			INSERT INTO RelateInfo ([TargetClipId],[OfficalClipId],[remark],[enable])
			values
			(@TargetClipId,@OfficalClipId,'',1)
		END
	END
RETURN 0

--	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
--    [TargetClipId] INT NULL, 
--    [OfficalClipId] INT NULL, 
--    [remark] NVARCHAR(500) NULL, 
--    [enable] BIT NULL
