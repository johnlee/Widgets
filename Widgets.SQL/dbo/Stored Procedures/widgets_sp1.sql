-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.widgets_sp1 
	@param1 int = 1,
	@param2 int = 2
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Widgets WHERE ID > 0;
END