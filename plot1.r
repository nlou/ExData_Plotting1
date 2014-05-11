power=read.delim(file.choose(), sep=";") ###semicolon data set
names(power)
hist(power$Global_active_power) ###frequency chart/histogram
hist(power$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")