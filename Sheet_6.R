# S311 - Sheet 6 - Complete R Script

# 1. Generate samples
normal_sample <- rnorm(100)
exp_sample <- rexp(100)

# 2. Probabilities
p2a <- 1 - pnorm(3)
p2b <- 1 - pnorm(42, mean = 35, sd = 6)
p2c <- dbinom(10, size = 10, prob = 0.8)
p2d <- punif(0.9)
p2e <- 1 - pchisq(6.5, df = 2)

# Print Q2 results
cat("Q2 Probabilities:\n",
    "a:", p2a, "\n",
    "b:", p2b, "\n",
    "c:", p2c, "\n",
    "d:", p2d, "\n",
    "e:", p2e, "\n\n")

# 3. Biased coin sample (P(H) = 0.3)
biased_coin <- sample(c("H", "T"), size = 10, replace = TRUE, prob = c(0.3, 0.7))
cat("Q3 Biased coin sample:\n", biased_coin, "\n\n")

# 4. Combined distribution questions
p4x <- 1 - pnorm(1.644)                # X ~ N(0,1)
q4y <- qexp(0.75, rate = 2)            # Y ~ Exp(2)

cat("Q4:\nP(X > 1.644):", p4x, "\nq such that P(Y < q) = 0.75:", q4y, "\n\n")

# 5. Binomial: 7 chips, 40% undefective ⇒ 60% defective
p5a <- dbinom(3, size = 7, prob = 0.6)
p5b <- pbinom(5, size = 7, prob = 0.6)
p5c <- 1 - pbinom(4, size = 7, prob = 0.6)

cat("Q5 Probabilities:\n",
    "a. Exactly 3 defective:", p5a, "\n",
    "b. At most 5 defective:", p5b, "\n",
    "c. At least 5 defective:", p5c, "\n\n")

# 6. Simulate exponential failure times (mean = 4 → rate = 1/4)
failure_times <- rexp(20, rate = 1/4)
cat("Q6 Failure times (20 components):\n")
print(failure_times)
cat("\n")

# 7. Normal dist: mean=400, sd=50
p7a <- pnorm(469, 400, 50) - pnorm(360, 400, 50)
p7b <- pnorm(600, 400, 50)
p7c <- 1 - pnorm(600, 400, 50)

cat("Q7:\n",
    "a. P(360 ≤ X ≤ 469):", p7a, "\n",
    "b. P(X ≤ 600):", p7b, "\n",
    "c. P(X > 600):", p7c, "\n\n")

# 8. Poisson approx: λ = 0.02 * 400 = 8
p8 <- dpois(5, lambda = 8)
cat("Q8 Poisson approx (P(5 defects out of 400)):", p8, "\n\n")

# 9. Coin tossed 3 times → X: # of Heads
# Distribution: 0 (1/8), 1 (3/8), 2 (3/8), 3 (1/8)
x_vals <- sample(c(0, 1, 2, 3), size = 100, replace = TRUE, prob = c(1/8, 3/8, 3/8, 1/8))

# Plot empirical CDF
cdf <- ecdf(x_vals)
plot(cdf, main = "Empirical CDF of X (Number of Heads in 3 Tosses)",
     xlab = "Number of Heads", ylab = "F(x)", col = "blue", pch = 19)
