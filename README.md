
# Sales Data Analysis and Visualization Project

# Project Overview
This project involves comprehensive data analysis and visualization of a retail sales dataset. The primary goal is to derive actionable insights from the data, which includes details about orders, customers, products, and regions. The project utilizes various tools and techniques, including Power BI, to create interactive dashboards that showcase key metrics and trends.


# Tools and Technologies 
- Power BI: Used for creating interactive dashboards and visualizations.
- SQL: Employed for data extraction and manipulation.
- R: Utilized for data cleaning and preprocessing.
- Excel: Assisted in initial data exploration and verification.

# Data Source
The dataset used in this project is derived from a fictional retail store, providing a rich mix of data fields including:
- Order Details: Order ID, Order Date, Ship Date, Ship Mode
- Customer Information: Customer ID, Customer Name, Segment, Country, City, State, Postal Code, Region
- Product Details: Product ID, Category, Sub-Category, Product Name
- Financial Metrics: Sales, Quantity, Discount, Profit

# Key Analyses and Dashboards
#### 1. Sales Performance Dashboard
- Total Sales: Sum of all sales transactions.
<img src="src/Visualization (Dashboards)/Total_Sales-Line_Chart.png" width="600">

- Average Order Value: Average value per order, providing insight into customer spending habits.
<img src="src/Visualization (Dashboards)/Avg_Order_Val-Stacked_Area_Chart.png" width="600">

#### 2. Customer Analysis Dashboard
- Customer Segmentation: Breakdown of customers by segment (e.g., Consumer, Corporate, Home Office).
<p float="left">
<img src="src/Visualization (Dashboards)/Sales_By_Segment-Stacked_Chart.png" width="60%">
<img src="src/Visualization (Dashboards)/Customer_Count_By_Segment-Table.png" width="35%">
</p>

#### 3. Product Performance Dashboard
- Top 5 Total Sales: Top 5 Products By Sales amount via Product Name.
<img src="src/Visualization (Dashboards)/Top_5_Prod_Sales-Barchart.png" width="600">

- Category Performance: Analysis of sales by product category and sub-category.
<img src="src/Visualization (Dashboards)/Sales_By_Cat-Stacked_Column_Chart.png" width="600">

#### 4. Regional Sales Dashboard
- Sales by Region: Comparison of sales performance across different geographic regions.
- Market Share: Analysis of the market share within various regions.
<img src="src/Visualization (Dashboards)/Market_Share_Analysis-Pie_Chart-And_Interactive_Map.png" width="600">


# How to Use
- Data Preparation: The Dataset is already prepared when you run the R-code but you can also ensure the dataset is cleaned further and formatted correctly where you deem necessary.
- Preprocessing can be done using tools like Excel, R or Python (with pandas), in this case I used R to prepare the dataset.
- Machine Learning is also used in the project to perform statistical analysis and/or predictive modelling
- Import Data: Load the dataset into Power BI or another preferred data visualization tool (e.g. Tableau).
- Dashboard Creation: Use the provided DAX formulas and visualization guidelines that I've already done to build the dashboards otherwise create your own.
- Analysis and Interpretation: Utilize the dashboards to derive insights and make data-driven decisions.

# Project Files
- Data: The raw excel dataset and any processed versions.
- Scripts: R and SQL scripts used for data cleaning and preprocessing.
- Power BI Files: Power BI project files containing the dashboards.

# Conclusion
- This project demonstrates the practical application of data analytics and visualization techniques to understand business performance, customer behavior, and market trends. 
- The insights gained can help businesses make informed decisions and strategize for future growth.

# License
This project is licensed under the MIT License - see the LICENSE file for details or click [here](https://github.com/robert-solomon12/Data_Analysis_Visualization_Superstore_Sales/blob/master/LICENSE).

# Acknowledgments
Special thanks to Kaggle for providing the Superstore Sales Dataset used in this project which is located in the 'Dataset' directory of this project or can be found on the Kaggle website when you click [here](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final).
