
##Plot 1 

## histogram 
## Title : Global Active Power
## xlab = Global Active Power (kilowatts)
## ylab = Frequency 
## bar color = red 

## Saving file (name and format)
png(filename = "plot1.png")

## Plotting
hist(as.numeric(sub_power$Global_active_power),main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")


dev.off()
