library("data.table", lib.loc="~/R/win-library/3.5")
twodays<-fread(input='household_power_consumption.txt',sep=';',nrows=2880,header=FALSE,na.strings='?',skip=66637)
head(twodays)
tail(twodays)
columns=c('Date','Time','Global_active_power','Global_reactive_power','Voltage','Global_intensity','Sub_metering_1','Sub_metering_2','Sub_metering_3')
colnames(twodays)<-columns
library("lubridate", lib.loc="~/R/win-library/3.5")
twodays$datetime<-dmy_hms(twodays$datetime)
head(twodays)
class(twodays$datetime)
hist(twodays$Global_active_power,col='red',xlab='Global Active Power (kilowatts)',main='Global Active Power')
dev.copy(png,'plot1.png')
dev.off()