## Plot (1, 2) ----
# line chart of voltage vs. time
par(col="black")
plot(x = d$DateTime, y = d$Voltage, type = "l", 
     ylab = "Voltage",
     xlab = "datetime")
