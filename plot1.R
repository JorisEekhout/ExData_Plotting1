setwd("D:/personal//courses//data science//4. exploratory data analysis//assignments//week 1")

# 1. Reading Local Files
data <- read.table("./data/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

# 2. Create subset from 2007-02-01 and 2007-02-02
dataSubset <- data[66637:69516, ]

# 3. Create plot 1
png(filename = "plot1.png", width = 480, height = 480)

with(dataSubset, hist(Global_active_power, 
    col = "red", 
    xlab = "Global Active Power (kilowatts)",
    main = "Global Active Power"
))

# Create png file
dev.off()