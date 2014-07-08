HPC <- read.csv("C:/Users/Heidrikur/Desktop/household_power_consumption.txt", sep=";", na.strings="?")
HPC2 <- HPC[which(HPC$Date=="1/2/2007" | HPC$Date=="2/2/2007"), ] 
HPC2 <- transform(HPC2, DateTime=as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

png("plot3.png", height = 480, width = 480)

with(HPC2, plot(DateTime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
with(HPC2, lines(DateTime, Sub_metering_2, typ="l", col="red"))
with(HPC2, lines(DateTime, Sub_metering_3, typ="l", col="blue"))

legend("topright", lty=1, col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
