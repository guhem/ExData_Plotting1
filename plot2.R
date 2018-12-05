setwd("~/Coursera/Exploratory_Data_Analysis")
dir.create("data")
file.exists("data")
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile = "./data/exdata_data_household_power_consumption.zip", method = "auto")
list.files("./data")
unzip("./data/exdata_data_household_power_consumption.zip")
list.files("./")
data <- read.csv("./household_power_consumption.txt", sep = ";")
dim(data)
head(data)


subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dim(subSetData)
head(subSetData)


datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
