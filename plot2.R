energydat<-read.csv("household_power_consumption.txt",header=TRUE,as.is=TRUE,sep=";")
usefuldata<-energydat[energydat$Date == "1/2/2007" | energydat$Date == "2/2/2007",]
usefuldata$dttm<-paste(usefuldata$Date,usefuldata$Time)
usefuldata$dttm<-strptime(usefuldata$dttm,format="%d/%m/%Y %H:%M:%S")
png(filename="plot2.png",bg="white")
plot(usefuldata$dttm,usefuldata$Global_active_power,pch="",type="o",xlab="", ylab="Global Active Power (kilowatts)")
dev.off()