## Plot 4
## To run this: run source("loaddata.R")

## Read Data

if (nrow(ptab) == 0)
  ptab <- loaddata()


## create plot4
plot4 <- function(){
  png(filename = "plot4.png", width = 480, height = 480, units = "px")
  par(mfrow=c(2,2))
  plot(ptab$Date2, ptab$Global_active_power, xlab="", ylab="Global Active Power (killowatts)", type="l")
  plot(ptab$Date2, ptab$Voltage, xlab="Datetime", ylab="Voltage", type="l")
  {
      yrange<-range(c(ptab$Sub_metering_1,ptab$Sub_metering_2,ptab$Sub_metering_3))
      plot(ptab$Date2, ptab$Sub_metering_1,  type="l", col="black",ylim=yrange, ylab="", xlab="") 
      par(new=T)
      plot(ptab$Date2, ptab$Sub_metering_2,  type="l", col="red",ylim=yrange, ylab="", xlab="")
      par(new=T)
      plot(ptab$Date2, ptab$Sub_metering_3,  type="l", col="blue",ylim=yrange, ylab="", xlab="")
      legend("topright", lwd=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
      title(ylab="Entergy sub metering")
    }
  plot(ptab$Date2, ptab$Global_reactive_power, xlab="Datetime", ylab="Global reactive power", type="l")
  dev.off()  
}

plot4()