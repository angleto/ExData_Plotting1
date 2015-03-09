
source("week_1_assignments.R")

par(mfrow = c(2, 2))
with(data, {  
  # plot 2
  plot(data$DateTime, data$Global_active_power, ylab = "Global Active Power (Kilowatts)", xlab = "", type = "l")
  
  # Voltage
  plot(data$DateTime, data$Voltage, ylab = "Voltage", xlab = "datetime", type = "l")
  
  # plot 3
  with(data, plot(DateTime, Sub_metering_1, ylab = "Energy sub metering", xlab = "", col="black", type = "l"))
  with(data, points(DateTime, Sub_metering_2, col="red", type = "l"))
  with(data, points(DateTime, Sub_metering_3, col="blue", type = "l"))
  legend("topright", lwd=2, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  # global reactive power
  plot(data$DateTime, data$Global_reactive_power, xlab = "datetime", type = "l")
})

dev.copy(png, file = "plot4.png", width=480, height=480)

dev.off()