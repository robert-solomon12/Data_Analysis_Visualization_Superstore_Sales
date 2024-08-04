-- Sales Data/Visualization Project By Robert Solomon

DROP DATABASE IF EXISTS salesData;
CREATE DATABASE IF NOT EXISTS salesData;
USE salesData;

CREATE TABLE IF NOT EXISTS sales (
	RowID INT,
    OrderID VARCHAR(255),
    OrderDate DATE,
    ShipDate DATE,
    ShipMode VARCHAR(255),
    CustomerID VARCHAR(255),
    CustomerName VARCHAR(255),
    Segment VARCHAR(255),
    Country VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    PostalCode VARCHAR(255),
    Region VARCHAR(255),
    ProductID VARCHAR(255),
    Category VARCHAR(255),
    SubCategory VARCHAR(255),
    ProductName VARCHAR(255),
    Sales DECIMAL(12,4)
);

-- SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/superstore_Data.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
-- Handling Incorrect Date Formats during pre-processing
(RowID, OrderID, @OrderDate, @ShipDate, ShipMode, CustomerID, CustomerName, Segment, Country, City, State, PostalCode, Region, ProductID, Category, SubCategory, ProductName, @Sales)
SET OrderDate = STR_TO_DATE(@OrderDate, '%d/%m/%Y'),
    ShipDate = STR_TO_DATE(@ShipDate, '%d/%m/%Y'),
    Sales = IF(@Sales REGEXP '^-?[0-9]+(\.[0-9]+)?$', CAST(@Sales AS DECIMAL(12,4)), NULL);



