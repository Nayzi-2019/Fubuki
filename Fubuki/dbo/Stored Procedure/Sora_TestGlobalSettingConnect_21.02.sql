CREATE PROCEDURE [dbo].[Sora_TestGlobalSettingConnect_21.02]
AS
	SELECT [value] from globalsetting with(nolock)
	where [key] = 'testconnectkey'
RETURN 0
