CREATE TABLE dbo.FactSales (
    OrderID INT PRIMARY KEY,
    CustomerName NVARCHAR(100),
    ProductName NVARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalAmount AS (Quantity * UnitPrice) PERSISTED,
    OrderDate DATETIME,
    LastModified DATETIME
);
