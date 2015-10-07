hpc <- read.csv("~/R/hpc.txt", sep=";")
hpc$Date_Time = paste(hpc$Date,hpc$Time)
hpc$Date_Time = strptime(hpc$Date_Time,"%d/%m/%Y %H:%M:%S")   #"%Y-%m-%d %H:%M:%S"
png("plot3.png", width = 480, height = 480, units = "px")
plot(hpc$Date_Time, hpc$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
lines(hpc$Date_Time, hpc$Sub_metering_2, col = "red")
lines(hpc$Date_Time, hpc$Sub_metering_3, col = "blue")
legend("topright", legend = colnames(hpc)[7:9],col = c("black", "red", "blue"), lty = 1)
dev.off()
