consu_data=read.csv("sorted_data.csv")

#Changing time to English
Sys.setlocale("LC_TIME", "English")

consu_data$Timeline<-NA
consu_data$Timeline <- strptime(paste(consu_data$Date, consu_data$Time), format = "%d/%m/%Y %H:%M:%S")
png(filename='plot3.png')
#We create three different lines here, one for each Sub_metering
with(consu_data,plot(Timeline,Sub_metering_1,type='l',ylab="Sub metering"))
     lines(consu_data$Timeline,consu_data$Sub_metering_2,col='red')
     lines(consu_data$Timeline,consu_data$Sub_metering_3,col="blue")
#We generate the legend
legend("topright",pch='-',col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
title(main="Plot 3")
dev.off()
