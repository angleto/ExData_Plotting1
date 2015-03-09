
# load csv file
data <- read.csv("data/household_power_consumption.txt",
                 sep=";",
                 na.strings = "?")


# merge date and time columns into a single column
data$DateTime <- strptime(paste(data$Date, data$Time, sep="_"), format='%d/%m/%Y_%H:%M:%S')

# create a subset of data
initDate <- strptime("2007-02-01_00:00:00", format='%Y-%m-%d_%H:%M:%S')
endDate <- strptime("2007-02-03_00:00:00", format='%Y-%m-%d_%H:%M:%S')
data <- subset(data, DateTime >= initDate & DateTime < endDate)
