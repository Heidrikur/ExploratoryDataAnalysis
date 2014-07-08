HPC <- read.csv("C:/Users/Heidrikur/Desktop/household_power_consumption.txt", sep=";", na.strings="?")
HPC2 <- HPC[which(HPC$Date=="1/2/2007" | HPC$Date=="2/2/2007"), ] 

png("plot1.png", height = 480, width = 480)

hist(HPC2$Global_active_power, xlab = "Global Active Power (Kilowatts)", col="red", main="Global Active Power", ylim=c(0,1200))

dev.off()