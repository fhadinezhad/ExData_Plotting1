plot1 <- function() {
        # libraries we need
        library("sqldf")
        library(lubridate)
        library(dplyr)
        library(reshape2)
        # we should be in the directory which contains data folder, and data folder contains the 
        #assignment Data
        # we just read those lines we need
        householdData <-
                read.csv.sql(
                        "./data/household_power_consumption.txt",
                        sql = 'select * from file where Date == "2/2/2007" OR Date == "1/2/2007"' ,
                        header = TRUE ,
                        sep = ";"
                )
        
        # plotting and saving in png file
        png("plot1.png", width = 480, height = 480)
        hist(
                householdData$Global_active_power,
                col = "red",
                main = "Global Active Power",
                xlab = "Global Active Power (kilowatts)"
        )
        dev.off()
        
}