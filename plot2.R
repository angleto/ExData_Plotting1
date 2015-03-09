
source("week_1_assignments.R")

# plot 2
plot(data$DateTime, data$Global_active_power, ylab = "Global Active Power (Kilowatts)", xlab = "", type = "l")

dev.copy(png, file = "plot2.png", width=480, height=480)

dev.off()