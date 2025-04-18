SELECT * FROM ONLINE_RETAIL LIMIT 10;

SELECT Country, SUM(Quantity * UnitPrice) AS TotalSales
FROM ONLINE_RETAIL
GROUP BY Country
ORDER BY TotalSales DESC;

SELECT TO_DATE(InvoiceDate, 'MM/DD/YYYY HH24:MI') AS SaleDate,
       SUM(Quantity * UnitPrice) AS DailySales
FROM ONLINE_RETAIL
GROUP BY SaleDate
ORDER BY SaleDate;

SELECT Description, SUM(Quantity) AS TotalQuantity
FROM ONLINE_RETAIL
GROUP BY Description
ORDER BY TotalQuantity DESC
LIMIT 10;
