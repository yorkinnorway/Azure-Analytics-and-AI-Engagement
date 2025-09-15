CREATE VIEW SalesLT.MostSoldProduct AS
SELECT TOP 1 ProductID, SUM(OrderQty) AS TotalSold
FROM SalesLT.SalesOrderDetail
GROUP BY ProductID
ORDER BY TotalSold DESC;
-- Auto-Fix: Removed the initial SELECT statement before CREATE VIEW because 'CREATE VIEW' must be the first statement in a batch.
-- Auto-Fix: Kept only the CREATE VIEW statement as required.

GO

