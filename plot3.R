# this program is for course project 1 of Explotary Data
# read electric power comsumption and plot 4 figures
# plot 2

# reading the data file
data <- read.table("household_power_consumption.txt", sep =";", na.strings="?",header = TRUE,
                   stringsAsFactors=FALSE, dec=".")

# convert date format
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
# subset data
sub_data <- data[which(data$Date == " 2007-02-01" | data$Date ==  "2007-02-02"),]

#convert date and time
date_time <- strptime(paste(sub_data$Date, sub_data$Time, sep=" "), "%Y-%m-%d %H:%M:%S")



#start to plot
png('plot3.png')

with(sub_data,plot(date_time, Sub_metering_1,type = 'l',col="Black",xlab ="",ylab ="Energy sub metering"))
lines(date_time, sub_data$Sub_metering_2,col="Red")
lines(date_time, sub_data$Sub_metering_3,col="Blue")

legend("topright", lty  =1, legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"))


dev.off()