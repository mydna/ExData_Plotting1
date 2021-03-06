## The following code creates plot 3 for the First Assignment. This code plots the three different
## sub metering data over time in the two days (1/2-2/2/2007).

energydat<-read.csv("household_power_consumption.txt",header=TRUE,as.is=TRUE,sep=";")
usefuldata<-energydat[energydat$Date == "1/2/2007" | energydat$Date == "2/2/2007",]
usefuldata$dttm<-paste(usefuldata$Date,usefuldata$Time)
usefuldata$dttm<-strptime(usefuldata$dttm,format="%d/%m/%Y %H:%M:%S")
png(filename="plot3.png",bg="white")
plot(usefuldata$dttm,usefuldata$Sub_metering_1,pch="",type="o",xlab="",ylab="Energy sub metering")
points(usefuldata$dttm,usefuldata$Sub_metering_2,pch="",type="o",col="Red")
points(usefuldata$dttm,usefuldata$Sub_metering_3,pch="",type="o",col="Blue")
legend("topright",lty=c(1,1),col=c("Black","Red","Blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()