#Read in the subsetted and formatted data
data <- read.table(file="subsetData.txt", header=TRUE, sep=";")

#Plot
hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

#Save Plot
dev.copy(png, file ="plot1.png")
dev.off()