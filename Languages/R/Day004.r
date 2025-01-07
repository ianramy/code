# Languages - R - Day 4
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

factorial <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * factorial(n - 1))
  }
}

cat("Enter the number to calculate the factorial:\n")
repeat {
  input <- readline()
  n <- as.integer(input)
  if (!is.na(n) && n >= 0) {
    break
  } else {
    cat("Invalid input. Please enter a non-negative integer:\n")
  }
}

cat(sprintf("The factorial of %d is %d\n", n, factorial(n)))
