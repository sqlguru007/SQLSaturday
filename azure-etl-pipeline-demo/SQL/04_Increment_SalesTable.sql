INSERT INTO dbo.SalesOrders (CustomerName, ProductName, Quantity, UnitPrice, OrderDate)
VALUES ('Jane Doe', 'Keyboard', 2, 49.99, '2025-02-15');

UPDATE dbo.SalesOrders 
SET Quantity = 2, LastModified = GETDATE()
WHERE OrderID = 1;