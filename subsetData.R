data <- read.table(file="household_power_consumption.txt", sep=';', header=TRUE, na.strings="?")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
write.table(subsetData, file="subsetData.txt")
