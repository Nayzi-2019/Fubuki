CREATE PROCEDURE [dbo].[Sora_AddTagInfo_21.02]
    @ClipId INT , 
    @value NVARCHAR(100), 
    @enable BIT, 
    @remark NVARCHAR(500),
    @tagType INT
AS
    DECLARE @Id INT
    SELECT @Id = [Id] FROM TagInfo
    WHERE [ClipId] = @ClipId AND [value] = @value

    IF @@ROWCOUNT = 0
    BEGIN
	    INSERT INTO TagInfo ([ClipId],[value],[enable],[remark],[tagType])
	    VALUES
	    (@ClipId,@value,@enable,@remark,@tagType)
    END
RETURN 0
