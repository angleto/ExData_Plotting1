
source("week_1_assignments.R")

# plot 3
with(data, plot(DateTime, Sub_metering_1, ylab = "Energy sub metering", xlab = "", col="black", type = "l"))
with(data, points(DateTime, Sub_metering_2, col="red", type = "l"))
with(data, points(DateTime, Sub_metering_3, col="blue", type = "l"))
legend("topright", lwd=2, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png")

dev.off()