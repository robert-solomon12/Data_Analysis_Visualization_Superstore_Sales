-- Sales Data/Visualization Project By Robert Solomon

-- Total sales per region
SELECT Region, SUM(Sales) AS TotalSales
FROM sales
GROUP BY Region;

-- Monthly sales trends
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(Sales) AS TotalSales
FROM sales
GROUP BY Month
ORDER BY Month;

-- Top 10 products by sales
SELECT ProductName, SUM(Sales) AS TotalSales
FROM sales
GROUP BY ProductName
ORDER BY TotalSales DESC
LIMIT 10;

-- Customer segmentation
SELECT CustomerID, CustomerName, SUM(Sales) AS TotalSales, COUNT(OrderID) AS OrderCount
FROM sales
GROUP BY CustomerID, CustomerName;
