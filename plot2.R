data <- read.table("C:\\Users\\mober\\OneDrive\\Documents\\COURSERA\\Data Science\\exdata_data_household_power_consumption\\household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",
                    colClasses = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric',
                                   'numeric', 'numeric', 'numeric'))

data1 <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))

data1$Date <- as.Date(data1$Date, format= "%d/%m/%Y")

datetime <- paste(as.Date(data1$Date), data1$Time)

data1$Datetime <- as.POSIXct(datetime)

with(data1, plot(Global_active_power~Datetime, type = "l", ylab = "Global Active Power (kilowatts", xlab= ""))

dev.copy(png, "plot2.png", width =480, height=480)

dev.off()