## Plot1
## To run this: run source("loaddata.R")

## Read Data
if (nrow(ptab) == 0)
  ptab <- loaddata()



## Create Plot1
plot1 <- function(){
  png(filename = "plot1.png", width = 480, height = 480, units = "px")
  hist(ptab$Global_active_power, col="red",  breaks=20, xlab="Global Active Power (kilowatts)", main="Global Active Power")  
  dev.off()
}

plot1()