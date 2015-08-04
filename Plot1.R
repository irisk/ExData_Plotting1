data <- read.table(file="subsetData.txt", header=TRUE)
head(data)
hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
