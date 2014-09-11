consu_data=read.csv("sorted_data.csv")

#Changing time settings language
Sys.setlocale("LC_TIME", "English")

consu_data$Timeline<-NA
consu_data$Timeline <- strptime(paste(consu_data$Date, consu_data$Time), format = "%d/%m/%Y %H:%M:%S")

png(filename='plot4.png')
#creating 4 plots
par(mfrow=c(2,2))
#Plot 1
plot(consu_data$Timeline,consu_data$Global_active_power,ylab='Global Active Power (kilowatts)',xlab="datetime",type='l')

#Plot 2
plot(consu_data$Timeline,consu_data$Voltage,ylab='Voltage',xlab="datetime",type='l')

# Plot 3
plot(consu_data$Timeline,consu_data$Sub_metering_1,type='l',xlab="datetime",ylab="Energy sub metering")
lines(consu_data$Timeline,consu_data$Sub_metering_2,col='red')
lines(consu_data$Timeline,consu_data$Sub_metering_3,col="blue")
legend("topright",pch='-',col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# Plot 4
plot(consu_data$Timeline,consu_data$Global_reactive_power,ylab='Global_reactive_power',xlab="datetime",type='l')

dev.off()
