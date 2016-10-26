plot3 <- function() {
        housholdMelt <-
                melt(
                        householdData2,
                        measure.vars = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                        na.rm = TRUE
                )
        png("plot3.png", width = 480, height = 480)
        
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
                        c(1,1,1)
        )
        dev.off()
}