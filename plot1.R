## Plot (1, 1) ----
# line chart of global active power vs. time
par(col="black")
plot(x = d$DateTime, y = d$Global_active_power,
     # draw lines instead of points
     type = "l", 
     ylab = "Global Active Power (kilowatts)",
     xlab = "")