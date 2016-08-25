setwd("C:\\Users\\Venkatesh\\Desktop\\Exploratory")

library(data.table)

electric_power <- fread(input = "household_power_consumption.txt", sep = ";", header = TRUE, na.strings = c("?"))

electric_power_subset <- subset(electric_power, electric_power$Date == "1/2/2007" | electric_power$Date == "2/2/2007" )

datetime <- strptime(paste(electric_power_subset$Date, electric_power_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png", width = 480, height = 480, units = "px")

plot(datetime, electric_power_subset$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()