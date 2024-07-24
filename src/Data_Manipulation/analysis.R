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

# Creating connection socket to database
con <- dbConnect(MySQL(), dbname = "salesData", host = "localhost", 
                 user = "root", password = "fGs€t”:aHfkj6&s")

# Query sales data to fetch data 
sales_data <- dbGetQuery(con, "SELECT * FROM sales")
dbDisconnect(con)



