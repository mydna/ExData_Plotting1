energydat<-read.csv("household_power_consumption.txt",header=TRUE,as.is=TRUE,sep=";")
usefuldata<-energydat[energydat$Date == "1/2/2007" | energydat$Date == "2/2/2007",]
globalap<-as.numeric(usefuldata$Global_active_power)
hist(globalap,breaks=12,col="OrangeRed",xlab="Global Active Power (kilowatts)", main="Global Active Power")

