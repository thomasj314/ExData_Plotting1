##plot4
##par - mfrow c(2,2)
## time~global Active Power
## time~Voltage
## time ~ Energy sub metering
## time ~ global_reactive_power


## Merging date and time to make it as one column
datetime <- strptime(paste(sub_power$Date,sub_power$Time, sep = ""), "%d/%m/%Y  %H:%M:%S")


## Saving file (name and format)
png(filename="plot4.png")

## Setting a plot with 2 rows and 2 columns

par(mfrow= c(2,2))

## Plotting

plot(datetime,as.numeric(sub_power$Global_active_power),type = "l",ylab = "Global Active Power", xlab="")

plot(datetime,as.numeric(sub_power$Voltage),xlab="datetime", ylab = "Voltage", type = "l")

plot(datetime,sub_power$Sub_metering_1,type = "n", xlab="",ylab="Energy sub metering")
lines(datetime,as.numeric(sub_power$Sub_metering_1))
lines(datetime,as.numeric(sub_power$Sub_metering_2),col="red")
lines(datetime,as.numeric(sub_power$Sub_metering_3),col="blue")
legend("topright",lty=1,col = c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(datetime,as.numeric(sub_power$Global_reactive_power),xlab="datetime",ylab="Global_reactive_power",type="l")

dev.off()
