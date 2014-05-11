power=read.delim(file.choose(), sep=";") ###semicolon data set
names(power)

###To combine the Date and Time columns###
DateTime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M") 


###Split the screen into a 2x2 matrix###
split.screen(c(2,2))

screen(n=1, new=TRUE)
plot(DateTime, power$Global_active_power, type="l", xlab="", ylab="Global Active Power")

screen(n=2, new=TRUE)
plot(DateTime, power$Voltage, type="l", xlab="datetime", ylab="Voltage")

screen(n=3, new=TRUE) ###ADJUST THE LEGEND
plot(DateTime, power$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(DateTime, power$Sub_metering_2, col="red")
lines(DateTime, power$Sub_metering_3, col="blue")
legend("topright", bty="n", lty=c(1,1), lwd=c(2.5, 2.5), col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

screen(n=4, new=TRUE)
plot(DateTime, power$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")