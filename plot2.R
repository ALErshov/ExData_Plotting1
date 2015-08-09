#coursera
#Exploratory Data Analysis by Roger D. Peng, PhD, Jeff Leek, PhD, Brian Caffo, PhD
#Course Project 1

plot2<-function (){
  
  #Changing of Global Active Power
  
  #data from the UC Irvine Machine Learning Repository
  #the “Individual household electric power consumption Data Set”
  #file must be downloaded from the Work Directory
  
  #loading data
  
  loadTable<-read.table(file="household_power_consumption.txt",header= TRUE, sep=";",na.strings="?")
  data<-loadTable[which(loadTable[,1]=="1/2/2007"|loadTable[,1]=="2/2/2007"),]
  
  #creating plot
  png("plot2.png")
  with(data, plot(Global_active_power,type="l",xaxt="n", xlab="",ylab="Global Active Power (kilowatts)"))
  xlbl<-c(1, length(data$Date)/2+1,length(data$Date)+1)
  axis(1, at=xlbl,labels=c("Thu", "Fri", "Sat"))
  dev.off()
    
}