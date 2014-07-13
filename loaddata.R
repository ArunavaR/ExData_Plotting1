##url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## setwd("./projects/Coursera/Exploratory Analysis/week1")
## zipfile <- "power.zip"
## download.file(url, dest=zipfile, method="curl")
## unzip(zipfile)

ptab <- data.frame()

loaddata <- function(){
  ptab <- read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=F, sep=';', na.strings="?")
  colnames(ptab) <-names(read.table('household_power_consumption.txt', header=TRUE,sep=";",nrows=1))
  ptab$Date2 <- strptime(paste(as.character(ptab$Date), as.character(ptab$Time)), "%d/%m/%Y %T")
  
  ptab
}

ptab <- loaddata()
head(ptab)



 