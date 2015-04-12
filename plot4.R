setwd("D:/personal//courses//data science//4. exploratory data analysis//assignments//week 1")

# 1. Reading Local Files
data <- read.table("./data/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

# 2. Create subset from 2007-02-01 and 2007-02-02
dataSubset <- data[66637:69516, ]

# 3. Create plot 4
png(filename = "plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))
plot(dataSubset$Global_active_power, ylab = "Global Active Power", xlab = "", type = "n", axes = FALSE)
lines(dataSubset$Global_active_power)
ticks = c(1, 1440, 2880)
axis(side = 1, at = ticks, labels = c("Thu", "Fri", "Sat"))
axis(side = 2)
box(which = "plot", lty = "solid")

plot(dataSubset$Voltage, ylab = "Voltage", xlab = "datetime", type = "n", axes = FALSE)
lines(dataSubset$Voltage)
ticks = c(1, 1440, 2880)
axis(side = 1, at = ticks, labels = c("Thu", "Fri", "Sat"))
axis(side = 2)
box(which = "plot", lty = "solid")

plot(dataSubset$Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = "n", axes = FALSE)
lines(dataSubset$Sub_metering_1)
lines(dataSubset$Sub_metering_2, col = "red")
lines(dataSubset$Sub_metering_3, col = "blue")
ticks = c(1, 1440, 2880)
axis(side = 1, at = ticks, labels = c("Thu", "Fri", "Sat"))
axis(side = 2)
box(which = "plot", lty = "solid")
legend("topright", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, lty=c(1,1,1), bty = "n")

plot(dataSubset$Global_reactive_power, ylab = "Global_reactive_power", xlab = "datetime", type = "n", axes = FALSE)
lines(dataSubset$Global_reactive_power)
ticks = c(1, 1440, 2880)
axis(side = 1, at = ticks, labels = c("Thu", "Fri", "Sat"))
axis(side = 2)
box(which = "plot", lty = "solid")

# Create png file
dev.off()