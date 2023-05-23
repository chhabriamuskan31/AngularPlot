-- =============================================
-- Author:      Muskan Chhabria
-- Create date: 22/05/2023
-- Description: shows all procuts and total amount sold by those
--
-- Parameters:

-- Example: EXEC Charts.sp_getSalesByproduct
-- Change History:
--   5/15/17 Jack Brown: Changed calcualtion method( example change)
-- =============================================

ALTER PROCEDURE dbo.sp_getSalesByProduct
AS 
BEGIN
	SELECT ProductName, SUM(o.Quantity*p.Price) AS Sales 
	FROM orders o INNER JOIN products p 
	ON p.ProductID = o.ProductId 
	GROUP BY ProductName
END

