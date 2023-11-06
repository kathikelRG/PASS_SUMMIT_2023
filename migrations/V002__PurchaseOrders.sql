--Create a table and stored procedure
CREATE TABLE	 dbo.PurchaseOrders (
	PurchaseOrderID INT NOT NULL IDENTITY PRIMARY KEY,
	CustomerID NCHAR(40) NOT NULL,
	PODate DATE NOT NULL DEFAULT CAST(GETDATE() AS DATE)
	)

GO
CREATE PROC dbo.get_PurchaseOrder(@PurchaseOrderID INT) AS
	SELECT PurchaseOrderID, CustomerID, PODate
	FROM dbo.PurchaseOrders 
	WHERE PurchaseOrderID = @PurchaseOrderID;
GO

