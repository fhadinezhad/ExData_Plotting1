plot4 <- function() {
        
        png("plot4.png", width = 480, height = 480)
        # makinf a 2 * 2 table for 4 plots
        par(mfrow = c(2,2))
        # first plot
        with(
                housholdMelt, plot(
                        RDateTime, Global_active_power, ylab = "Global Active Power", type = "l", xlab =
                                ""
                )
        )
        # second plot
        with(housholdMelt, plot(RDateTime, Voltage, type = "l"))
        
        # third plot
        with(
                housholdMelt, plot(
                        RDateTime,housholdMelt$value, type = "n", ylab = "Energy sub metering", xlab =
                                " "
                )
        )
        with(
                subset(housholdMelt, variable == "Sub_metering_1"),
                points(RDateTime,value,
                       col = "black",
                       type = "l")
        )
        with(
                subset(housholdMelt, variable == "Sub_metering_2"),
                points(RDateTime,value,
                       col = "red",
                       type = "l")
        )
        with(
                subset(housholdMelt, variable == "Sub_metering_3"),
                points(RDateTime,value,
                       col = "blue",
                       type = "l")
        )
        legend(
                "topright",
                col = c("black", "red", "Blue"),
                legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty =
                        c(1,1,1),bty = "n"
        )
        
        # forth plot
        with(housholdMelt, plot(
                RDateTime, Global_reactive_power, type = "l", xlab = " "
        ))
        dev.off()
        
}