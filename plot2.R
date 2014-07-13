## Plot2
## To run this: run source("loaddata.R")

## Read Data

if (nrow(ptab) == 0)
  ptab <- loaddata()


## create plot2
plot2 <- function(){
  png(filename = "plot2.png", width = 480, height = 480, units = "px")
  plot(ptab$Date2, ptab$Global_active_power, xlab="", ylab="Global Active Power (killowatts)", type="l")
  dev.off()
}

plot2()