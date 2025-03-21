# Task 1: Understanding R Commands

# (a) Documentation for functions
# Displays help documentation for 'intersect' and 'mode'
?intersect 
?mode 

# (b) Creating and evaluating sequences
seq_x <- seq(1, 20, 2)  # Sequence: 1, 3, 5, ..., 19
bool_y <- seq_x <= 11  # Logical vector: TRUE for elements <= 11

# (c) Logical operations on vectors
vec_A <- c(rep(1,3), rep(2,4))  # (1,1,1,2,2,2,2)
vec_B <- vec_A != 1  # Logical vector: (FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
mode(vec_B)  # Output: "logical"

# (d) Replication and logical negation
vec_Res <- rep(2:4, c(3, 0, 2))  # (2,2,2,4,4)
bool_Res <- vec_Res >= 4  # Logical: (FALSE, FALSE, FALSE, TRUE, TRUE)
!bool_Res  # (TRUE, TRUE, TRUE, FALSE, FALSE)

# (e) Matrix operations
mat_A <- matrix(c(1,2,3,10,20,30,100,200,300), nrow=3)
det(mat_A)  # Determinant of mat_A
mat_B <- t(mat_A)  # Transpose of mat_A

# (f) Diagonal matrix and dimensions
diag_vec <- c(2,-2,22)
diag_mat <- diag(diag_vec)  # Diagonal matrix from diag_vec
dim(diag_vec)  # NULL, as diag_vec is a vector
dim(diag_mat)  # Dimensions: (3x3)

# (g) Matrix binding and element-wise operations
mat_C <- matrix(c(1,3,3,9,6,5), 2, 3)
mat_D <- matrix(c(9,8,8,2,9,0), 2, 3)
rbind(mat_C, mat_D)  # Row binding
cbind(mat_D, mat_C)  # Column binding
diag_vals <- diag(mat_C)  # Extract diagonal
updated_diag <- diag_vals + 2  # Add 2 to diagonal
scaled_mat <- mat_D * 3  # Element-wise multiplication by 3

# (h) Logical operations
log_y <- c(TRUE, FALSE, FALSE, TRUE)
log_x <- c(FALSE, FALSE, TRUE, TRUE)
log_and <- log_x & log_y  # Logical AND
log_or <- log_x | log_y  # Logical OR

# (i) Creating mixed-type vectors
mixed_vec <- c(1:5, pi, "text")  # Numbers, pi, and text

# (j) Extracting specific letters
letters_subset <- letters[10:15]  # Extracts 'j' to 'o'

# (k) Incorrect assignment (commented out as it's invalid)
# 1:3 = c(T, F, T)  # Incorrect syntax

# Task 2: Truth Table for Logical AND
truth_table <- expand.grid(A = c(TRUE, FALSE), B = c(TRUE, FALSE))
truth_table$AND <- with(truth_table, A & B)
print(truth_table)

# Task 3: Intersection of numeric sets
num_set1 <- 1:10
num_set2 <- 5:14
intersect(num_set1, num_set2)  # Output: (5,6,7,8,9,10)

# Task 4: Matrix operations
mat_E <- matrix(c(1,1,3,5,2,6,2,1,3), nrow=3, byrow=TRUE)

# (a) Compute A^3 and verify it's a zero matrix
mat_E3 <- mat_E %*% mat_E %*% mat_E
print(mat_E3)  # Should be a zero matrix

# (b) Modify third column by summing second and third columns
mat_E[,3] <- mat_E[,2] + mat_E[,3]
print(mat_E)

# Task 5: Constructing and computing matrix products
mat_F <- matrix(10, nrow=15, ncol=3)  # 15x3 matrix filled with 10
mat_FTF <- t(mat_F) %*% mat_F  # Compute mat_F^T * mat_F
print(mat_FTF)

# Task 6: Custom function to compute series sum
compute_series <- function(num_x, num_n) {
  if (num_n <= 0 || !is.numeric(num_n) || num_n != as.integer(num_n)) {
    stop("num_n must be a strictly positive integer")
  }
  sum(sapply(0:num_n, function(i) num_x^i / (i+1)))
}

# Example usage:
compute_series(2, 3)