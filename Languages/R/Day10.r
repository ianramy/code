# Languages - R - Day 10
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

is_positive <- function(num) {
  return(num > 0)
}

get_positive_number <- function() {
  repeat {
    input <- readline("Enter a positive number: ")
    
    num <- suppressWarnings(as.numeric(input))
    if (is.na(num)) {
      cat("Invalid input. Please enter a numeric value.\n")
      next
    }
    
    if (is_positive(num)) {
      return(num)
    } else {
      cat("The number is not positive. Please try again.\n")
    }
  }
}

num <- get_positive_number()
cat("The positive number entered is:", num, "\n")
