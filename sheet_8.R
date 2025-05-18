# S311 - Sheet 8 Analysis in R

# -------------------------------
# Question 1: Lubricant ANOVA
# -------------------------------

# Data
lubricant_x <- c(10, 13, 12, 9, 14, 8)
lubricant_y <- c(9, 7, 11, 9, 8, 10)
lubricant_z <- c(6, 7, 7, 5, 9, 8)

# Combine data and create a factor for groups
weight_loss <- c(lubricant_x, lubricant_y, lubricant_z)
lubricant_type <- factor(rep(c('X', 'Y', 'Z'), each = 6))

# Perform ANOVA
anova_result1 <- aov(weight_loss ~ lubricant_type)
summary(anova_result1)

# Grand mean
grand_mean1 <- mean(weight_loss)
grand_mean1

# -------------------------------
# Question 2: Drying Technique ANOVA
# -------------------------------

# Data
technique_1 <- c(1.0, 1.1, 1.4, 1.2, 1.5, 1.3)
technique_2 <- c(0.8, 0.6, 1.0, 1.1, 0.9, 1.3)
technique_3 <- c(0.6, 0.4, 0.8, 0.9, 0.5, 0.6)

# Combine data and create a factor for groups
water_content <- c(technique_1, technique_2, technique_3)
technique_type <- factor(rep(c('Technique 1', 'Technique 2', 'Technique 3'), each = 6))

# Perform ANOVA
anova_result2 <- aov(water_content ~ technique_type)
summary(anova_result2)

# Estimate the experimental variance
exp_variance <- summary(anova_result2)[[1]][2, 3]
exp_variance

# Overall mean
overall_mean <- mean(water_content)
overall_mean

# Grand mean
grand_mean2 <- mean(water_content)
grand_mean2

# Treatment effects
treatment_effects <- tapply(water_content, technique_type, mean) - overall_mean
treatment_effects


# -------------------------------
# Question 3: Fertilizer ANOVA
# -------------------------------

# Data
fertilizer_x <- c(3.5, 4.0, 3.8, 4.1, 4.4)
fertilizer_y <- c(4.7, 5.0, 4.5, 5.3, 4.6)
fertilizer_z <- c(3.6, 3.9, 4.2, 4.1, 4.0)

# Combine data and create a factor for groups
yield <- c(fertilizer_x, fertilizer_y, fertilizer_z)
fertilizer_type <- factor(rep(c('X', 'Y', 'Z'), each = 5))

# Perform ANOVA
anova_result3 <- aov(yield ~ fertilizer_type)
summary(anova_result3)

# Grand mean
grand_mean3 <- mean(yield)
grand_mean3

# -------------------------------
# Question 4: Hotdog Data ANOVA
# -------------------------------

# Load the data
hotdog_data <- read.table('hotdog.txt', header = TRUE)

# Part (a): ANOVA for calories
anova_calories <- aov(calories ~ factor(type), data = hotdog_data)
summary(anova_calories)

# Grand mean for calories
grand_mean_calories <- mean(hotdog_data$calories)
grand_mean_calories

# Part (b): ANOVA for sodium
anova_sodium <- aov(sodium ~ factor(type), data = hotdog_data)
summary(anova_sodium)

# Grand mean for sodium
grand_mean_sodium <- mean(hotdog_data$sodium)
grand_mean_sodium

# Part (c): F-test for variance between 'beef' and 'other'
beef_calories <- hotdog_data$calories[hotdog_data$type == 1]
other_calories <- hotdog_data$calories[hotdog_data$type == 2]
var.test(beef_calories, other_calories)
