# Sales Data/Visualization Project By Robert Solomon

#################################################
##                                             ##
##                                             ##
#     Advanced Data Manipulation and Analysis   #
##                                             ##
##                                             ##
#################################################


# Installing necessary libraries/packages for analysis and database manipulation
# install.packages(c("DBI",
#                    "RMySQL",
#                    "dplyr", 
#                    "tidyr", 
#                    "ggplot2", 
#                    "plotly", "forecast"))

# Importing libraries
library(DBI)
library(RMySQL)
library(dplyr)
library(tidyr)
library(ggplot2)
library(plotly)
library(forecast)



# Creating connection socket to Database
con <- dbConnect(MySQL(), dbname = "salesData", host = "localhost", 
                 user = "root", password = "fGs€t”:aHfkj6&s")

# Querying sales data to link for manipulation 
sales_data <- dbGetQuery(con, "SELECT * FROM sales")

# Disconnect from SQL Database
dbDisconnect(con)

# Displaying 'sales data'
sales_data


# Performing data cleaning and transformation:
sales_data_Transforming <- sales_data %>%
  mutate(OrderDate = as.Date(OrderDate, format = "%Y-%m-%d"),
         ShipDate = as.Date(ShipDate, format = "%Y-%m-%d")) %>%
  drop_na()



# Conducting EDA and visualization:

# Capturing/Visualizing Sales trends over time
ggplot(sales_data, aes(x = OrderDate, y = Sales)) +
  geom_line() +
  theme_minimal()

# Converting to interactive plot
ggplotly()



# Performing statistical analysis or predictive modeling:

# Time series forecasting
sales_ts <- ts(sales_data$Sales, start = c(2018, 1), frequency = 12)
model <- auto.arima(sales_ts)
forecast_sales <- forecast(model, h = 12)
plot(forecast_sales)



# Data Cleaning and Initial Analysis with Excel:

# Exporting the cleaned data (sales_data) back into Excel (.csv format) for further visualization and analysis
write.csv(sales_data, "cleaned_sales_data.csv", row.names = FALSE)

