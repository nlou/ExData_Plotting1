power=read.delim(file.choose(), sep=";") ###semicolon data set
names(power)

DateTime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M") 

plot(DateTime, power$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")