plot2 <- function() {
        png("plot2.png", width = 480, height = 480)
        householdData2 <-
                mutate(householdData, RDateTime = dmy_hms(paste(Date,Time)))
        with(
                householdData2, plot(
                        RDateTime,Global_active_power, type = "l", xlab =
                                "  ", ylab = "Global Active Power (kilowatts)"
                )
        )
        
        dev.off()
}