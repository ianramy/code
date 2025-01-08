# Languages - R - Day 12
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

# Function to find the larger of two numbers
find_larger <- function(num1, num2) {
  if (num1 > num2) {
    return(num1)
  } else {
    return(num2)
  }
}

# Function to validate user input and ensure it is numeric
get_valid_number <- function(prompt) {
  repeat {
    input <- readline(prompt = prompt)
    num <- as.numeric(input)
    if (!is.na(num)) {
      return(num)
    } else {
      cat("Invalid input. Please enter a valid number.\n")
    }
  }
}

# Get two valid numbers from the user
num1 <- get_valid_number("Enter the first number: ")
num2 <- get_valid_number("Enter the second number: ")

# Call the function and print the result
result <- find_larger(num1, num2)
cat("The larger number is:", result, "\n")
