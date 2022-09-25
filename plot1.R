data1 <- read.table("C:\\Users\\mober\\OneDrive\\Documents\\COURSERA\\Data Science\\exdata_data_household_power_consumption\\household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",
                  colClasses = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric',
                                 'numeric', 'numeric', 'numeric'))

data <- subset(data1, Date %in% c("1/2/2007", "2/2/2007"))

data$Date <- as.Date(data$Date, format= "%d/%m/%Y")

hist(data$Global_active_power, main = "Global Active Power", xlab= "Global Active Power (kilowatts)", ylab = "Frequency", col="red")

dev.copy(png, "plot1.png", width =480, height=480)

dev.off()