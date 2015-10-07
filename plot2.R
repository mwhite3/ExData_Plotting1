hpc <- read.csv("~/R/hpc.txt", sep=";")
hpc$Date_Time = paste(hpc$Date,hpc$Time)
hpc$Date_Time = strptime(hpc$Date_Time,"%d/%m/%Y %H:%M:%S")   #"%Y-%m-%d %H:%M:%S"
png("plot2.png", width = 480, height = 480, units = "px")
plot(hpc$Date_Time, hpc$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
