## Plot (2, 2) ----
# line chart of global reactive power vs. time 
par(col="black")
plot(x = d$DateTime, type = "l", y = d$Global_reactive_power,
     ylab = "Global_reactive_power",
     xlab = "datetime")