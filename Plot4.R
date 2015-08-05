#Read in the subsetted and formatted data
data <- read.table(file="subsetData.txt", header=TRUE, sep=";")
#Make sure the time column is set to be POSIXlt
data$Time <- strptime(data$Time, format="%Y-%m-%d %H:%M:%S")

#Create larger plot area
quartz(width=10, height=8)
par(mfrow = c(2, 2))
with(data, {
    #Plot1 
     plot(Time, Global_active_power,type="l", ylab="Global Active Power (kilowatts)", xlab="")
     #Plot2
     plot(Time, Voltage,type="l", ylab="Voltage", xlab="datetime")
     #Plot3
     plot(Time, Sub_metering_1, type= "l", ylab="Energy sub metering", xlab="")
     lines(Time, Sub_metering_2, col="red")
     lines(Time, Sub_metering_3, col="blue")
     legend("topright",lty=c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.8)
     
     #Plot 4
     plot(Time, Global_reactive_power, type= "l", ylab="Global_reactive_power ", xlab="datetime")
     }
)

#Save plot
dev.copy(png, file ="plot4.png")
dev.off()