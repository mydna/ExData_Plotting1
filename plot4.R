## The following code creates plot 4 for the First Assignment. This code creates a multipanel plot
## consisting of four different plots. 

energydat<-read.csv("household_power_consumption.txt",header=TRUE,as.is=TRUE,sep=";")
usefuldata<-energydat[energydat$Date == "1/2/2007" | energydat$Date == "2/2/2007",]
usefuldata$dttm<-paste(usefuldata$Date,usefuldata$Time)
usefuldata$dttm<-strptime(usefuldata$dttm,format="%d/%m/%Y %H:%M:%S")
png(filename="plot4.png",bg="white")
par(mfrow=c(2,2))
plot(usefuldata$dttm,usefuldata$Global_active_power,pch="",type="o",xlab="", ylab="Global Active Power (kilowatts)")
plot(usefuldata$dttm,usefuldata$Voltage,pch="",type="o",xlab="datetime",ylab="Voltage")
plot(usefuldata$dttm,usefuldata$Sub_metering_1,pch="",type="o",xlab="",ylab="Energy sub metering")
points(usefuldata$dttm,usefuldata$Sub_metering_2,pch="",type="o",col="Red")
points(usefuldata$dttm,usefuldata$Sub_metering_3,pch="",type="o",col="Blue")
legend("topright",lty=c(1,1),col=c("Black","Red","Blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(usefuldata$dttm,usefuldata$Global_reactive_power,pch=".",type="o",xlab="datetime",ylab="Global_reactive_power")
dev.off()