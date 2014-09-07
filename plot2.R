consu_data=read.csv("sorted_data.csv")
#For this plot we need to generate timeline from the Date + Time attributes, we can then use it as normal time
consu_data$Timeline<-NA
consu_data$Timeline <- strptime(paste(consu_data$Date, consu_data$Time), format = "%d/%m/%Y %H:%M:%S")
# Note : the x-axis generates days in french, I couldn't change it
png(filename='plot2.png')
with(consu_data,plot(Timeline,Global_active_power,ylab='Global Active Power (kilowatts)',xlab="Timeline",type='l'))
title(main="Plot 2")
dev.off()

