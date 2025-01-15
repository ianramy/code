# Languages - R - Day 19
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


# Function to check if a number is a Perfect Number
is_perfect_number <- function(n) {
  if (n <= 0 || n %% 1 != 0) {
    return(NA)  # Return NA for invalid input (non-positive or non-integer)
  }
  
  sum_divisors <- 0
  for (i in 1:(n %/% 2)) {  # Integer division for efficiency
    if (n %% i == 0) {
      sum_divisors <- sum_divisors + i
    }
  }
  
  return(sum_divisors == n)
}

# Function to validate user input
get_valid_input <- function() {
  input <- readline(prompt = "Enter a positive integer to check if it's a Perfect Number: ")
  num <- suppressWarnings(as.integer(input))
  
  if (!is.na(num) && num > 0) {
    return(num)
  } else {
    cat("⚠️ Invalid input. Please enter a positive integer.\n")
    return(NA)
  }
}

# Main execution
number <- get_valid_input()

if (!is.na(number)) {
  if (is_perfect_number(number)) {
    cat("🎉", number, "is a Perfect Number!\n")
  } else {
    cat("❌", number, "is not a Perfect Number.\n")
  }
}
