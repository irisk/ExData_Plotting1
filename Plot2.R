#Read in the subsetted and formatted data
data <- read.table(file="subsetData.txt", header=TRUE, sep=";")

#Make sure the time column is set to be POSIXlt
data$Time <- strptime(data$Time, format="%Y-%m-%d %H:%M:%S")

#Plot
with(data,
 plot(Time, Global_active_power,type="l", ylab="Global Active Power (kilowatts)", xlab="")
)
axis.Date(1, at = seq(min(data$Time),max(data$Time), by = "day"), format = "%w")

#Save plot
dev.copy(png, file ="plot2.png")
dev.off()