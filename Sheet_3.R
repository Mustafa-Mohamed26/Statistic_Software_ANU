# Task 1: Mathematical Calculations

# (a) Compute the sum of (i^3 + i^2) from i=10 to 100
sum_a <- sum((10:100)^3 + (10:100)^2)
print(sum_a)

# (b) Generate the sequence (2^2, 2^3, 2^4, ..., 2^25)
seq_b <- 2^(2:25)
print(seq_b)

# (c) Compute the sum of (even numbers / odd numbers) from 2/1 to 38/39
num_c <- seq(2, 38, by = 2) # Even numbers: 2, 4, 6, ..., 38
den_c <- seq(1, 39, by = 2) # Odd numbers: 1, 3, 5, ..., 39
sum_c <- sum(num_c / den_c)
print(sum_c)

# Task 2: Creating Character Vectors

# (a) "label 1", "label 2", ..., "label 30"
labels <- paste("label", 1:30, sep = " ")
print(labels)

# (b) "fn1", "fn2", ..., "fn30"
functions <- paste("fn", 1:30, sep = "")
print(functions)

# (c) "x-1", "x-2", ..., "x-30"
x_labels <- paste("x-", 1:30, sep = "")
print(x_labels)

# Task 3: Solving a System of Linear Equations

# Define matrix A (coefficients)
A <- matrix(c(
    1, 2, 3, 4, 5,
    2, 1, 2, 3, 4,
    3, 2, 1, 2, 3,
    4, 3, 2, 1, 2,
    5, 4, 3, 2, 1
), nrow = 5, byrow = TRUE)

# Define vector y (right-hand side)
y <- c(7, -1, -3, 5, 17)

# Solve for x (Ax = y)
x_solution <- solve(A, y)
print(x_solution)

# Task 4: Implementing the Function f(x)

# Define the function to evaluate f(x) based on given conditions
tmpFn <- function(xVec) {
    result <- numeric(length(xVec)) # Initialize result vector

    # Apply conditions
    result[xVec < 0] <- xVec[xVec < 0]^2 + 2 * xVec[xVec < 0] + 3
    result[xVec >= 0 & xVec < 2] <- xVec[xVec >= 0 & xVec < 2] + 3
    result[xVec >= 2] <- xVec[xVec >= 2]^2 + 7 * xVec[xVec >= 2] - 2

    return(result)
}

# Example usage:
x_values <- c(-1, 0, 1, 2, 3)
result_values <- tmpFn(x_values)
print(result_values)
