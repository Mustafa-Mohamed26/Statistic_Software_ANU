# S311 – Sheet 7 - Full R Script

# Q1: Oxygen uptake test
uptake <- c(14.0, 14.1, 14.5, 13.2, 11.2, 14.0, 14.1, 12.2, 11.1, 13.7, 13.2, 16.0, 12.8, 14.4, 12.9)

# a. One-sample t-test: H0: μ = 12, H1: μ ≠ 12
t_test_q1 <- t.test(uptake, mu = 12)
print(t_test_q1)

# b. 95% CI
ci_q1 <- t_test_q1$conf.int
cat("Q1 95% CI for mean:", ci_q1, "\n\n")

# ==============================================================================

# Q2: One-sample t-test (μ < 12.5)
survival <- c(11.7, 10.5, 11.2, 12.9, 12.7, 10.3, 10.4, 10.9, 11.3, 10.6)
t_test_q2 <- t.test(survival, mu = 12.5, alternative = "less")
print(t_test_q2)

# ==============================================================================

# Q3: Paired t-test for before and after program
before <- c(45, 73, 46, 124, 33, 57, 83, 34, 17)
after  <- c(44, 65, 44, 119, 35, 56, 80, 31, 11)
t_test_q3 <- t.test(before, after, paired = TRUE, alternative = "greater")
print(t_test_q3)

# =============================================================================

# Q4: Two-sample t-test and F-test for equality of variances
A <- c(9.5, 10.5, 9.0, 9.75, 10.0, 13.0, 10.0, 13.5, 10.0, 9.5, 10.0, 9.75)
B <- c(12.5, 9.5, 13.5, 13.75, 12.0, 13.75, 12.5, 9.5, 12.0, 13.5, 12.0, 12.0)

# a. Two-sample t-test (assuming unequal variances)
t_test_q4a <- t.test(A, B)
print(t_test_q4a)

# b. F-test for equal variances
var_test_q4b <- var.test(A, B)
print(var_test_q4b)

# ============================================================================

# Q5: Using hotdog.txt file (assume it's in working directory)
# Read data
# Load the hotdog data
hotdog <- read.table("/mnt/data/hotdog.txt", header = TRUE)

# Subset beef (type = 1) and poultry (type = 3)
beef <- subset(hotdog, type == 1)
poultry <- subset(hotdog, type == 3)

# a. Test for difference in average calories (beef vs poultry)
t_calories <- t.test(beef$calories, poultry$calories)
print(t_calories)

# b. Test for difference in average sodium (beef vs poultry)
t_sodium <- t.test(beef$sodium, poultry$sodium)
print(t_sodium)

# c. Test for equality of variances in calories (F-test)
f_var_calories <- var.test(beef$calories, poultry$calories)
print(f_var_calories)