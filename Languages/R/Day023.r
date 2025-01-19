# Languages - R - Day 23
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


# Function to calculate the power of a number using recursion
power <- function(base, exponent) {
  if (exponent == 0) {
    return(1)
  } else if (exponent < 0) {
    return(1 / power(base, -exponent))
  } else {
    return(base * power(base, exponent - 1))
  }
}

# Input from the user
cat("Enter the base number:\n")
base_input <- readLines(con = stdin(), n = 1)
base <- as.numeric(base_input)

if (!is.na(base)) {
  cat("Enter the exponent:\n")
  exponent_input <- readLines(con = stdin(), n = 1)
  exponent <- as.integer(exponent_input)
  
  if (!is.na(exponent)) {
    result <- power(base, exponent)
    cat(base, "^", exponent, "=", result, "\n")
  } else {
    cat("Invalid input for exponent.\n")
  }
} else {
  cat("Invalid input for base.\n")
}
