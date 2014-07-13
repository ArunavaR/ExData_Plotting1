## Plot3
## To run this: run source("loaddata.R")

## Read Data

if (nrow(ptab) == 0)
  ptab <- loaddata()


## create plot3

plot3 <- function(){
  png(filename = "plot3.png", width = 480, height = 480, units = "px")
  yrange<-range(c(ptab$Sub_metering_1,ptab$Sub_metering_2,ptab$Sub_metering_3))
  plot(ptab$Date2, ptab$Sub_metering_1,  type="l", col="black",ylim=yrange, ylab="", xlab="") 
  par(new=T)
  plot(ptab$Date2, ptab$Sub_metering_2,  type="l", col="red",ylim=yrange, ylab="", xlab="")
  par(new=T)
  plot(ptab$Date2, ptab$Sub_metering_3,  type="l", col="blue",ylim=yrange, ylab="", xlab="")
  legend("topright", lwd=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
  title(ylab="Entergy sub metering")
  dev.off()
}

plot3()

