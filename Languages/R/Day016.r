# Languages - R - Day 16
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

# Function to check if a number is an Armstrong Number
is_armstrong <- function(n) {
  if (!is.numeric(n) || n < 0 || floor(n) != n) {
    cat("Please enter a positive integer.\n")
    return(FALSE)
  }
  
  digits <- as.numeric(unlist(strsplit(as.character(n), "")))
  num_digits <- length(digits)
  sum_digits <- sum(digits ^ num_digits)
  
  return(sum_digits == n)
}

# Function to prompt user input
prompt_user <- function() {
  cat("Enter a positive integer to check if it's an Armstrong Number: ")
  input <- readline()
  
  if (grepl("^[0-9]+$", input)) {
    num <- as.numeric(input)
    if (is_armstrong(num)) {
      cat(num, "is an Armstrong Number.\n")
    } else {
      cat(num, "is not an Armstrong Number.\n")
    }
  } else {
    cat("Invalid input. Please enter a positive integer.\n")
  }
}

# Run the prompt
prompt_user()
