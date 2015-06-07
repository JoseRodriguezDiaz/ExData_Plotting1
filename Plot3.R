#Read data into variable and change class of columns that have factors into character vectors

#This calculates how much memory is necessary before reading the file into R
object.size(read.csv("household_power_consumption.txt"))

mydata <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", 
                   stringsAsFactors=F)
mydata$Date <- as.Date(mydata$Date, format="%d/%m/%Y")

# Subsetting the data - must use subset= because subset() expects logical expression
subdata <- subset(mydata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_full)


# Converting dates
datetime <- paste(as.Date(subdata$Date), subdata$Time)
subdata$Datetime <- as.POSIXct(datetime)

#Third Plot
with(subdata, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#create PNG File
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()