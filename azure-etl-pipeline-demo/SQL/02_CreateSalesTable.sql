USE SalesDB;
GO

CREATE TABLE dbo.SalesOrders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName NVARCHAR(100),
    ProductName NVARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    OrderDate DATETIME,
    LastModified DATETIME DEFAULT GETDATE()
);
GO
