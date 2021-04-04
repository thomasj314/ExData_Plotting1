## If I do not have a directory for data then make a directory call "data"

if(!file.exists("data")){
  dir.create("data")
}


fileUrl <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
download.file(fileUrl,destfile = "./data/household_power_consumption.zip")
unzip("./data/household_power_consumption.zip",exdir="./data")

## Reading data from the txt file.

household_power_consumption <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";")

## Subsetting the Data

sub_power <- subset(household_power_consumption, household_power_consumption$Date == "1/2/2007" | household_power_consumption$Date == "2/2/2007")


