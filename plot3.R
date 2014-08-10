## Plot (2, 1) ----
# overlay of three line charts, each sub-metering vs. time
yrange<-range(c(d$Sub_metering_1,d$Sub_metering_2,d$Sub_metering_3))
plot(x=d$DateTime, y=d$Sub_metering_1, type="l", ylim=yrange, col="black",
     ylab = "Energy sub metering",
     xlab = "")
lines(x=d$DateTime, y=d$Sub_metering_2, type="l", ylim=yrange, col="red")
lines(x=d$DateTime, y=d$Sub_metering_3, type="l", ylim=yrange, col="blue")
# making legends is annoying, surely there is a better way
legend(x = "topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1), # codes for line type
       lwd=c(1,1,1), # codes for line width
       col=c("black", "red", "blue")) # line color
