# Languages - R - Day 17
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that generates the Fibonacci sequence up to a given number n.
# The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

fibonacci <- function(n) {
  if (n < 0) {
    return("Please enter a positive integer.")
  } else if (n == 0) {
    return(0)
  }
  
  fib <- c(0, 1)
  
  while (TRUE) {
    next_num <- tail(fib, 1) + tail(fib, 2)[1]
    if (next_num > n) {
      break
    }
    fib <- c(fib, next_num)
  }
  
  return(fib)
}

# Ask the user for a number and generate the Fibonacci sequence up to that number.
input <- readline("Enter a positive number: ")

# Validate input
if (grepl("^[0-9]+$", input)) {
  n <- as.integer(input)
  result <- fibonacci(n)
  cat("Fibonacci sequence up to", n, ":", result, "\n")
} else {
  cat("Invalid input. Please enter a positive integer.\n")
}
