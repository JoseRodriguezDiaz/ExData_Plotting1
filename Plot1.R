#Read data into variable and change class of columns that have factors into character vectors

#This calculates how much memory is necessary before reading the file into R
object.size(read.csv("household_power_consumption.txt"))

#This reads the file into R
mydata <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", 
                      stringsAsFactors=F)

mydata$Date <- as.Date(mydata$Date, format="%d/%m/%Y")

# Subsetting the data - must use subset= because subset() expects logical expression
subdata <- subset(mydata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_full)


# Converting dates
datetime <- paste(as.Date(subdata$Date), subdata$Time)
subdata$Datetime <- as.POSIXct(datetime)

# First Plot
hist(subdata$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

# Creates the PNG file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
