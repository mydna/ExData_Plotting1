## The following code creates plot 1 for the First Assignment. This code creates a histogram of
## the global active power on 1/2-2/2/2007. 

energydat<-read.csv("household_power_consumption.txt",header=TRUE,as.is=TRUE,sep=";")
usefuldata<-energydat[energydat$Date == "1/2/2007" | energydat$Date == "2/2/2007",]
globalap<-as.numeric(usefuldata$Global_active_power)
png(filename = "plot1.png", bg = "white")
hist(globalap,breaks=12,col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
