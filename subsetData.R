data <- read.table(file="household_power_consumption.txt", sep=';', header=TRUE, na.strings="?")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
head(subsetData)
subsetData$Date <- as.Date(subsetData$Date, format="%d/%m/%Y")

fullDate <- paste(subsetData$Date,subsetData$Time,sep=" ")

subsetData$Time <- strptime(fullDate, format="%Y-%m-%d %H:%M:%S")

write.table(subsetData, file="subsetData.txt", sep=";")
