# Task 1: Evaluate expressions
# a
result_a <- 3 * (sin((2 * pi) / 4) + atan(1.1)) * exp(-2)
print(result_a)

# b
result_b <- 5 %% 2
print(result_b)

# c
result_c <- function(x) {
  return(sqrt(4 * x ^ 2 - 2 * x + 3))
}
print(result_c(2))

# d
result_d <- function(x) {
  return(sqrt(4 * x ^ 2 - 2 * x + 3) + 1 / 6)
}
print(result_d(3))

# Task 2: Explain outputs
# a
# Syntax error due to misplaced `+`, needs completion
# > 4*5 would work

# b
x <- c(1, 2, 3)
y <- c(10, 20)
z <- c(x, y, 5)
u <- c(y^2, x)
print(z)
print(u)

# c
k <- rnorm(10)
print(k) # Generates 10 normally distributed random numbers

# d, e, f
?mean  # Help for mean function
?q      # Help for q functions
?seq   # Help for sequence generation

# g, h
Library() # Lists available packages
library() # Loads installed packages

# i
x1 <- c(FALSE, FALSE, TRUE, TRUE)
x2 <- c(TRUE, FALSE, FALSE, TRUE)
result_1 <- x1 & x2
result_2 <- x1 & !x2
print(result_1)
print(result_2)

# Task 3: Generate sequences
seq1 <- seq(0, 10, 1)
print(seq1)

# Task 4
seq2 <- seq(10, 100, 5)
print(seq2)

# Task 5
seq3 <- seq(20, 10, -2)
print(seq3)

# Task 6: Compute mean and standard deviation of children's weights
male_weights <- c(2.5, 3, 3.5, 3.2, 2.7)
female_weights <- c(3, 3.5, 2, 2.8)
all_weights <- c(male_weights, female_weights)
mean_weight <- mean(all_weights)
sd_weight <- sd(all_weights)
print(mean_weight)
print(sd_weight)