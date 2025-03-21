# Task 1: Describe the "trees" dataset

# (a) Perform a summary of all variables in "trees"
summary(trees)

# (b) Examine the two measures of center for the variable Volume
mean(trees$Volume)  # Mean
median(trees$Volume)  # Median

# (c) Compute the mean of Height
mean(trees$Height)

# (d) Identify the variable with the highest standard deviation
sds <- sapply(trees, sd)
names(sds)[which.max(sds)]  # Variable with highest SD

# (e) Compute the standard deviations of all variables
sds

# (f) Calculate the maximum and minimum value of Girth in one command
range(trees$Girth)

# (g) Calculate the interquartile range of Volume
IQR(trees$Volume)

# (h) Construct the boxplot of the "trees" dataset and check for outliers
boxplot(trees, main="Boxplot of Trees Dataset")
# Outliers appear as points outside the whiskers

# Task 2: Quadratic Function Plot
graph_x <- -4:4
graph_y <- 4 * graph_x^2 + 2 * graph_x + 5

# Try different graph types
plot(graph_x, graph_y, type="b", col="blue", main="Quadratic Function y = 4x^2 + 2x + 5", xlab="x", ylab="y")
lines(graph_x, graph_y, type="o", col="red")

# Task 3: Describe "airquality" dataset

# (a) Create a data frame called "airquality1"
airquality1 <- airquality

# (b) Calculate the mean and variance of Ozone data
mean(airquality1$Ozone, na.rm=TRUE)
var(airquality1$Ozone, na.rm=TRUE)

# (c) Generate descriptive statistics for Solar.R data
summary(airquality1$Solar.R)

# (d) Calculate the deciles of the Temp data
quantile(airquality1$Temp, probs=seq(0, 1, by=0.1), na.rm=TRUE)

# (e) Calculate the 35th, 45th, and 67th percentiles of Wind data
quantile(airquality1$Wind, probs=c(0.35, 0.45, 0.67), na.rm=TRUE)

# (f) Construct a plot of Temp against Day
plot(airquality1$Day, airquality1$Temp, type="o", col="blue", xlab="Day", ylab="Temperature", main="Temperature vs. Day")

# (g) Create a boxplot of the Month data
boxplot(airquality1$Month, main="Boxplot of Months", col="lightblue")

# (h) Draw a histogram of Ozone data
hist(airquality1$Ozone, main="Histogram of Ozone Data", col="green", breaks=20, xlab="Ozone Levels", na.rm=TRUE)

# (i) Visual summaries of all variables
pairs(airquality1, main="Scatterplot Matrix of Air Quality Data")
