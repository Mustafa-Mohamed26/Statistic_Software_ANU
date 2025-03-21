# Task 1: Students Data Analysis

# (i) Creating a new data frame "students.dets"
students.dets <- data.frame(
  Height = c(160, 176, 172, 161, 175, 181, 180, 173, 177, 165),
  Weight = c(110, 86, 75, 75, 71, 91, 85, 90, 86, 88),
  Gender = c("Female", "Female", "Male", "Female", "Male", "Male", "Male", "Female", "Male", "Female"),
  Cols = c("Black", "Black", "Black", "Green", "Green", "Black", "Green", "Black", "Green", "Black")
)

# (ii) Evaluating the mean weight of male students
mean_weight_male <- mean(students.dets$Weight[students.dets$Gender == "Male"])
print(mean_weight_male)

# (iii) Evaluating the number of students who have "Black" color
num_black <- sum(students.dets$Cols == "Black")
print(num_black)

# (iv) Finding students whose height is between 160 and 175
students_in_range <- subset(students.dets, Height >= 160 & Height <= 175)
print(students_in_range)

# Task 2: ChickWeight Data Analysis

# (i) Attaching the built-in ChickWeight dataset
attach(ChickWeight)

# (ii) Line plot of weight (y-axis) against time (x-axis) for chick number 34
chick34 <- subset(ChickWeight, Chick == 34)
plot(chick34$Time, chick34$Weight, type='l', col='blue', xlab='Time', ylab='Weight', main='Chick 34 Weight Over Time')

# (iii) Plot of first 5 Heights (y-axis) against time (x-axis)
plot(ChickWeight$Time[1:5], ChickWeight$Weight[1:5], type='b', col='red', xlab='Time', ylab='Height', main='First 5 Heights vs Time')

# (iv) Histogram for weights less than 100
hist(ChickWeight$Weight[ChickWeight$Weight < 100], col='gray', main='Histogram of Weights < 100', xlab='Weight')

# (v) Testing hypothesis that weights follow an exponential distribution
ks.test(ChickWeight$Weight, "pexp", rate=1/mean(ChickWeight$Weight))
