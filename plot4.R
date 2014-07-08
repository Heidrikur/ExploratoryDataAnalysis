HPC <- read.csv("C:/Users/Heidrikur/Desktop/household_power_consumption.txt", sep=";", na.strings="?")
HPC2 <- HPC[which(HPC$Date=="1/2/2007" | HPC$Date=="2/2/2007"), ] 
HPC2 <- transform(HPC2, DateTime=as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

png("plot4.png", height = 480, width = 480)

par(mfrow = c(2,2))
#plot 1
plot(HPC2$DateTime, HPC2$Global_active_power, type="l", ylab = "Global Active Power (Kilowatts)", xlab="")

#plot 2
plot(HPC2$DateTime, HPC2$Voltage, type="l", ylab = "Voltage", xlab="datetime")

#plot 3
with(HPC2, plot(DateTime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
with(HPC2, lines(DateTime, Sub_metering_2, typ="l", col="red"))
with(HPC2, lines(DateTime, Sub_metering_3, typ="l", col="blue"))
legend("topright", bty = "n", lty=1,col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plot 4
plot(HPC2$DateTime, HPC2$Global_reactive_power, type="l", ylab = "Global_reactive_power", xlab="datetime")

dev.off()