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

# Second Plot
plot(subdata$Global_active_power~subdata$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

#creates the PNG file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()