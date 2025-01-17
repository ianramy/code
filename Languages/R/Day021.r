# Languages - R - Day 21
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


gcd <- function(a, b) {
    # Ensure positive values
  a <- abs(a)
  b <- abs(b)
  
  if (a == 0 && b == 0) {
    return(NA)
  }
  
  while (b != 0) {
    temp <- b
    b <- a %% b
    a <- temp
  }
  return(a)
}

# Input validation and interactive output
get_integer_input <- function(prompt) {
  cat(prompt, "\n")
  input <- suppressWarnings(as.integer(readLines(con = "stdin", n = 1)))
  if (is.na(input)) {
    cat("Invalid input. Please enter a valid integer.\n")
    return(NULL)
  }
  return(input)
}

# Main program
num1 <- get_integer_input("Enter the first number:")
if (!is.null(num1)) {
  num2 <- get_integer_input("Enter the second number:")
  if (!is.null(num2)) {
    result <- gcd(num1, num2)
    if (is.na(result)) {
      cat("GCD is undefined for inputs 0 and 0.\n")
    } else {
      cat("The GCD of", num1, "and", num2, "is", result, ".\n")
    }
  }
}
