
##Plot 2
##ylab = Global Active Power(Killowatts)
## type = line 

## Saving file (name and format)
png(filename = "plot2.png")


## Merging date and time to make it as one column
datetime <- strptime(paste(sub_power$Date,sub_power$Time, sep = ""), "%d/%m/%Y  %H:%M:%S")

## Plotting
plot(datetime,as.numeric(as.character(sub_power$Global_active_power)),type = "l", xlab = "", ylab ="Global Active Power (Killowatts) ")


dev.off()
