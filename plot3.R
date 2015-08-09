#coursera
#Exploratory Data Analysis by Roger D. Peng, PhD, Jeff Leek, PhD, Brian Caffo, PhD
#Course Project 1

plot3<-function(){
  
  #Energy sub metering
  
  #data from the UC Irvine Machine Learning Repository
  #the “Individual household electric power consumption Data Set”
  #file must be downloaded on the Work Directory
  
  #loading data
  
  loadTable<-read.table(file="household_power_consumption.txt",header= TRUE, sep=";",na.strings="?")
  data<-loadTable[which(loadTable[,1]=="1/2/2007"|loadTable[,1]=="2/2/2007"),]
  
  #creating histogram
  png("plot3.png")
  with(data, plot(Sub_metering_1,type="l",xaxt="n", xlab="",ylab="Energy sub metering"))
  points(data$Sub_metering_2,type="l",xaxt="n", xlab="",ylab="Energy sub metering", col="red")
  points(data$Sub_metering_3,type="l",xaxt="n", xlab="",ylab="Energy sub metering", col="blue")
  xlbl<-c(1, length(data$Date)/2+1,length(data$Date)+1)
  axis(1, at=xlbl,labels=c("Thu", "Fri", "Sat"))
  legend("topright", lwd=1,col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()
  
}