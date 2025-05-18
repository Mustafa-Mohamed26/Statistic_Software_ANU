# S311 – Sheet 9 Solutions

# ---------------------- Problem 1 ----------------------
# Data for Problem 1
temperature <- c(42, 37, 46, 30, 50, 43, 43, 46, 46, 49)
passengers <- c(173, 149, 185, 123, 201, 174, 175, 188, 186, 198)

# (a) Calculate the least squares estimates of the coefficients
model_1 <- lm(passengers ~ temperature)
coefficients(model_1)

# (b) Find the regression equation
summary(model_1)

# (c) Draw the resulting regression equation on the scatter plot
plot(temperature, passengers, main='Temperature vs Passengers', pch=16, col='blue')
abline(model_1, col='red', lwd=2)

# (d) Predict the number of passengers when temperature is at 45 degrees
predict(model_1, data.frame(temperature = 45))

# (e) Calculate the residual for (42, 173)
residuals_1 <- residuals(model_1)
residuals_1[1]

# (f) Estimate the variance
sigma_squared_1 <- summary(model_1)$sigma^2
sigma_squared_1

# (g) Visualize the residuals
plot(residuals_1, main='Residuals Plot', pch=16, col='green')
abline(h=0, col='red', lwd=2)


# ---------------------- Problem 2 ----------------------
# Data for Problem 2
X <- c(18, 21, 28, 35, 47, 33, 40, 41, 28, 21, 30, 46, 44, 38, 19)
Y <- c(38, 40, 49, 54, 66, 52, 57, 62, 47, 39, 49, 65, 65, 56, 38)

# (a) Find the regression equation
model_2 <- lm(Y ~ X)
summary(model_2)

# (b) Coefficient of determination (R-squared)
summary(model_2)$r.squared

# (c) Predict the plasma lipid composition for X = 50
predict(model_2, data.frame(X = 50))

# (d) Calculate the sample correlation coefficient
cor(X, Y)

# (e) Test significance of the regression
anova(model_2)

# (f) Calculate the residuals and plot them
residuals_2 <- residuals(model_2)
plot(residuals_2, main='Residuals Plot (Problem 2)', pch=16, col='purple')
abline(h=0, col='red', lwd=2)
