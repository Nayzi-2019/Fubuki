CREATE PROCEDURE [dbo].[Sora_GetTagInfoWithClipId_21.02]
    @ClipId INT 
AS
    SELECT [value],[tagType],[remark] FROM TagInfo WITH(NOLOCK)
    WHERE [ClipId] = @ClipId AND [enable] = 1
RETURN 0
