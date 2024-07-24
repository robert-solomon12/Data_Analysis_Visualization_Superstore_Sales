-- Sales Data/Visualization Project By Robert Solomon

DROP DATABASE IF EXISTS salesData;
CREATE DATABASE IF NOT EXISTS salesData;
USE salesData;

CREATE TABLE sales (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    ShipDate DATE,
    CustomerID INT,
    CustomerName VARCHAR(255),
    ProductID INT,
    ProductName VARCHAR(255),
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    Profit DECIMAL(10, 2),
    Region VARCHAR(255)
);

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/superstore_Data.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

