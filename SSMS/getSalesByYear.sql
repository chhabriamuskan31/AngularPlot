ALTER PROCEDURE dbo.sp_getSalesByYear
AS 
BEGIN
	/* CAST is used for typecasting to convert it into string */
	SELECT CAST(YEAR(o.DateAdded) AS VARCHAR) AS year,SUM(o.Quantity*p.price) as sales
    FROM products p INNER JOIN orders o
	ON p.ProductID=o.ProductId
    GROUP BY YEAR(o.DateAdded)
END

EXEC dbo.sp_getSalesByYear;

