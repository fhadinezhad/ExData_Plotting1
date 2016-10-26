install.packages("sqldf")
library("sqldf")
householdData <-
        read.csv.sql(
                "./data/household_power_consumption.txt",
                sql = 'select * from file where Date == "2/2/2007" OR Date == "1/2/2007"' ,
                header = TRUE ,
                sep = ";"
        )
hist(
        householdData$Global_active_power,
        col = "red",
        main = "Global Active Power",
        xlab = "Global Active Power (kilowatts)"
)