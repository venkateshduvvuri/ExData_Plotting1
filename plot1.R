setwd("C:\\Users\\Venkatesh\\Desktop\\Exploratory")

library(data.table)

electric_power <- fread(input = "household_power_consumption.txt", sep = ";", header = TRUE, na.strings = c("?"))

electric_power_subset <- subset(electric_power, electric_power$Date == "1/2/2007" | electric_power$Date == "2/2/2007" )

png(filename = "plot1.png", width = 480, height = 480, units = "px")

hist(electric_power_subset$Global_active_power, col = "RED", xlab = "Global Active Power (Kilowatts)", main = "Global Active Power")

dev.off()