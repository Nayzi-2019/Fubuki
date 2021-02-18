CREATE PROCEDURE [dbo].[Sora_GetGlobalSetting_21.02]
	@key nvarchar(200) = ''
AS
	SELECT [value] from globalsetting with(nolock)
	where [key] = @key
RETURN 0
