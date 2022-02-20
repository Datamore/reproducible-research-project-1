setwd("E:/OneDrive/Coursera/Exploratory Data Analysis with R")
data<-read.table(file="data/household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

head(data1)

Data1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


head(Data1)

#str(subSetData)
globalActivePower <- as.numeric(Data1$Global_active_power)
## png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.copy(png,file="plot1.png", width=480, height=480)

dev.off()