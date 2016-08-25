setwd("C:\\Users\\Venkatesh\\Desktop\\Exploratory")

library(data.table)

electric_power <- fread(input = "household_power_consumption.txt", sep = ";", header = TRUE, na.strings = c("?"))

electric_power_subset <- subset(electric_power, electric_power$Date == "1/2/2007" | electric_power$Date == "2/2/2007" )

png("plot3.png", width=480, height=480)

plot(datetime, electric_power_subset$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")

lines(datetime, electric_power_subset$Sub_metering_2, type="l", col="red")

lines(datetime, electric_power_subset$Sub_metering_3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()