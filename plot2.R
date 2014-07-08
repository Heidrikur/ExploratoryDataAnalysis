HPC <- read.csv("C:/Users/Heidrikur/Desktop/household_power_consumption.txt", sep=";", na.strings="?")
HPC2 <- HPC[which(HPC$Date=="1/2/2007" | HPC$Date=="2/2/2007"), ] 
HPC2 <- transform(HPC2, DateTime=as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

png("plot2.png", height = 480, width = 480)

plot(HPC2$DateTime, HPC2$Global_active_power, typ="l", ylab = "Global Active Power (Kilowatts)", xlab="")

dev.off()