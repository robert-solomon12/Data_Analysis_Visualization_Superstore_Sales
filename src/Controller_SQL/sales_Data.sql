DROP DATABASE IF EXISTS sales_data;
CREATE DATABASE sales_data;
USE sales_data;

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

 -- LOAD DATA INFILE 'Data_Analysis_Superstore_Sales/Data_Analysis_Visualization_Superstore_Sales/Dataset/superstore_Data.csv'

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/superstore_Data.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



