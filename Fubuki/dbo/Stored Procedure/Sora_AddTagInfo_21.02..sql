CREATE PROCEDURE [dbo].[Sora_AddTagInfo_21.02]
    @ClipId INT , 
    @value NVARCHAR(100), 
    @enable BIT, 
    @remark NVARCHAR(500),
    @tagType INT
AS
    DECLARE @Id INT
    SELECT @Id = [Id] FROM TagInfo
    WHERE [ClipId] = @ClipId AND [tagType] = @tagType

    IF @@ROWCOUNT = 0
    BEGIN
	    INSERT INTO TagInfo ([ClipId],[value],[enable],[remark],[tagType])
	    VALUES
	    (@ClipId,@value,@enable,@remark,@tagType)
    END
    ELSE
    BEGIN
        UPDATE TagInfo
        SET [value] = @value, [remark] = @remark, [enable] = @enable
        WHERE [Id] = @Id
    END
RETURN 0
