##plot3
##sub_metering_1  -- black
##sub_metering_2  -- red 
##sub_metering_3  -- blue
##xlab = ""
##ylab = "Energy sub metering"
##type = line




## Saving file (name and format)
png(filename = "plot3.png")


## Merging date and time to make it as one column
datetime <- strptime(paste(sub_power$Date,sub_power$Time, sep = ""), "%d/%m/%Y  %H:%M:%S")

## Plotting 
plot(datetime,sub_power$Sub_metering_1, type = "n", xlab= "", ylab= "Energy sub metering")
lines(datetime,as.numeric(as.character(sub_power$Sub_metering_1)))
lines(datetime,as.numeric(as.character(sub_power$Sub_metering_2)),col = "red")
lines(datetime,as.numeric(as.character(sub_power$Sub_metering_3)),col = "blue")

legend("topright",lty=1, col= c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
