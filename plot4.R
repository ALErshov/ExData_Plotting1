#coursera
#Exploratory Data Analysis by Roger D. Peng, PhD, Jeff Leek, PhD, Brian Caffo, PhD
#Course Project 1

plot4<-function (){
  
  #4 graphics
  
  #data from the UC Irvine Machine Learning Repository
  #the “Individual household electric power consumption Data Set”
  #file must be downloaded on the Work Directory
  
  #loading data
  
  loadTable<-read.table(file="household_power_consumption.txt",header= TRUE, sep=";",na.strings="?")
  data<-loadTable[which(loadTable[,1]=="1/2/2007"|loadTable[,1]=="2/2/2007"),]
  
  png("plot4.png")
  par(mfrow=c(2,2))
  
  #plot1
  with(data, plot(Global_active_power,type="l",xaxt="n", xlab="",ylab="Global Active Power (kilowatts)"))
  xlbl<-c(1, length(data$Date)/2+1,length(data$Date)+1)
  axis(1, at=xlbl,labels=c("Thu", "Fri", "Sat"))
  
  #plot2
  with(data, plot(Voltage,type="l",xaxt="n", xlab="datetime",ylab="Global Active Power"))
  axis(1, at=xlbl,labels=c("Thu", "Fri", "Sat"))
  
  #plot3
  with(data, plot(Sub_metering_1,type="l",xaxt="n", xlab="",ylab="Energy sub metering"))
  points(data$Sub_metering_2,type="l",xaxt="n", xlab="",ylab="Energy sub metering", col="red")
  points(data$Sub_metering_3,type="l",xaxt="n", xlab="",ylab="Energy sub metering", col="blue")
  axis(1, at=xlbl,labels=c("Thu", "Fri", "Sat"))
  legend("topright", lwd=1,col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  #plot4
  with(data, plot(Global_reactive_power,type="l",xaxt="n", xlab="datetime",ylab="Global_reactive_power"))
  axis(1, at=xlbl,labels=c("Thu", "Fri", "Sat"))
  
  dev.off()
  
  
  
}