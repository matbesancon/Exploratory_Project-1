consu_data=read.csv("sorted_data.csv")
#saving the plot with the appropriate name
png(filename='plot1.png')
#creating the plot
with(consu_data,hist(consu_data$Global_active_power,breaks=11,xlab="Global Active Power(kilowatts)",col="orange",main='Global Active Power'))
plot1<-hist(consu_data$Global_active_power,breaks=11,xlab="Global Active Power(kilowatts)",col="orange",main='Global Active Power')
dev.off()
