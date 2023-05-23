ALTER PROCEDURE dbo.sp_getSalesByTopTenState
AS 
BEGIN
	
	SELECT TOP 10 c.STATE, SUM(o.Quantity * p.price) AS TotalSales
	FROM customers c
	JOIN orders o ON c.CustomerId = o.CustomerId
	JOIN products p ON o.ProductID = p.ProductID
	GROUP BY c.STATE
	ORDER BY TotalSales DESC;
END

EXEC dbo.sp_getSalesByTopTenState;


