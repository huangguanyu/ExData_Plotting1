# this program is for course project 1 of Explotary Data
# read electric power comsumption and plot 4 figures
#1, plot 1

# reading the data file
data <- read.table("household_power_consumption.txt", sep =";", na.strings="?",header = TRUE,
                   stringsAsFactors=FALSE, dec=".")

# convert date format
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
# subset data
sub_data <- data[which(data$Date == " 2007-02-01" | data$Date ==  "2007-02-02"),]

# start to plot 

png('plot1.png')

hist(sub_data$Global_active_power,main = "Global Active Power",
     xlab = "Global Active Power (Kilowatts)",ylab="Frequency",col = "Red")

dev.off()
