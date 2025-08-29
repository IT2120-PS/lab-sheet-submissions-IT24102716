setwd("C:\\Users\\HIRU\\OneDrive\\Desktop\\IT24102716")
getwd()

# Import dataset
data <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
attach(data)

# Histogram
histogram <- hist(Delivery_Time_.minutes.,
                  main = "Histogram of Delivery Times",
                  breaks = seq(20, 70, length = 10),
                  right = FALSE,
                  col = "lightblue")

breaks <- histogram$breaks
freq <- histogram$counts
mids <- histogram$mids

# Frequency table
classes <- c()
for (i in 1:(length(breaks)-1)) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}
cbind(classes = classes, frequency = freq)

# Frequency polygon
plot(mids, freq, type = 'o',
     main = "Frequency Polygon for Delivery Times",
     xlab = "Delivery Time",
     ylab = "Frequency",
     ylim = c(0, max(freq)))

# Cumulative frequency Ogive
cum.freq <- cumsum(freq)
new <- c(0, cum.freq)   # add 0 at start
plot(breaks, new, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(new)))
cbind(upper = breaks, CumFreq = new)

