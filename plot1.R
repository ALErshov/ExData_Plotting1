#coursera
#Exploratory Data Analysis by Roger D. Peng, PhD, Jeff Leek, PhD, Brian Caffo, PhD
#Course Project 1

plot1<-function (){

  #frequency of Global Active Power
  
  #data from the UC Irvine Machine Learning Repository
  #the “Individual household electric power consumption Data Set”
  #file must be downloaded from the Work Directory
  
  #loading data
  
  loadTable<-read.table(file="household_power_consumption.txt",header= TRUE, sep=";",na.strings="?")
  data<-loadTable[which(loadTable[,1]=="1/2/2007"|loadTable[,1]=="2/2/2007"),]
  
  #creating histogram
  png("plot1.png")
  hist(data$Global_active_power, col="red",main = "Global Active Power",xlab="Global Active Power (kilowatts)")
  dev.off()

  
  
}