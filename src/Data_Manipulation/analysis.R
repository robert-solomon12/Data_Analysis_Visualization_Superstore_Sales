# Sales Data/Visualization Project By Robert Solomon

#################################################
##                                             ##
##                                             ##
#     Advanced Data Manipulation and Analysis   #
##                                             ##
##                                             ##
#################################################


# Installing necessary libraries/packages for analysis and database manipulation
install.packages(c("DBI",
                   "RMySQL",
                   "dplyr", 
                   "tidyr", 
                   "ggplot2", 
                   "plotly", "forecast"))

# Importing libraries
library(DBI)
library(RMySQL)
library(dplyr)
library(tidyr)

# Creating connection socket to database
con <- dbConnect(MySQL(), dbname = "salesData", host = "localhost", 
                 user = "root", password = "fGs€t”:aHfkj6&s")

# Querying sales data to link for manipulation 
sales_data <- dbGetQuery(con, "SELECT * FROM sales")
dbDisconnect(con)




# Performing data cleaning and transformation:
sales_data_Transforming <- sales_data %>%
  mutate(OrderDate = as.Date(OrderDate, format = "%Y-%m-%d"),
         ShipDate = as.Date(ShipDate, format = "%Y-%m-%d")) %>%
  drop_na()

