
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


globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
