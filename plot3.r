power=read.delim(file.choose(), sep=";") ###semicolon data set
names(power)

DateTime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M") 

plot(DateTime, power$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(DateTime, power$Sub_metering_2, col="red")
lines(DateTime, power$Sub_metering_3, col="blue")
legend("topright", lty=c(1,1), lwd=c(2.5, 2.5), col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

