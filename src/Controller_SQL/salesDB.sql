-- Sales Data/Visualization Project By Robert Solomon

DROP DATABASE IF EXISTS salesData;
CREATE DATABASE IF NOT EXISTS salesData;
USE salesData;

CREATE TABLE IF NOT EXISTS sales (
    OrderID INT PRIMARY KEY,
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
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    Profit DECIMAL(10, 2)
);

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/superstore_Data.csv' INTO TABLE sales
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

