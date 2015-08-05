#Read in the subsetted and formatted data
data <- read.table(file="subsetData.txt", header=TRUE, sep=";")
#Make sure the time column is set to be POSIXlt
data$Time <- strptime(data$Time, format="%Y-%m-%d %H:%M:%S")
#Plot
with(data, {
     plot(Time, Sub_metering_1, type= "l", ylab="Energy sub metering", xlab="")
     lines(Time, Sub_metering_2, col="red")
     lines(Time, Sub_metering_3, col="blue")
     }
)
#Format axis
axis.Date(1, at = seq(min(data$Time),max(data$Time), by = "day"), format = "%w")
#Create legend
legend("topright",lty=c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.8)
#Save plot
dev.copy(png, file ="plot3.png")
dev.off()