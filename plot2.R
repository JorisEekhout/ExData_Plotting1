setwd("D:/personal//courses//data science//4. exploratory data analysis//assignments//week 1")

# 1. Reading Local Files
data <- read.table("./data/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

# 2. Create subset from 2007-02-01 and 2007-02-02
dataSubset <- data[66637:69516, ]

# 3. Create plot 2
png(filename = "plot2.png", width = 480, height = 480)

plot(dataSubset$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab = "", type = "n", axes = FALSE)
lines(dataSubset$Global_active_power)
ticks = c(1, 1440, 2880)
axis(side = 1, at = ticks, labels = c("Thu", "Fri", "Sat"))
axis(side = 2)
box(which = "plot", lty = "solid")

# Create png file
dev.off()