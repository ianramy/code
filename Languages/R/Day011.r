# Languages - R - Day 11
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

# Function to calculate the product of two numbers
multiply <- function(a, b) {
  return(a * b)
}

# Function to get valid numeric input from the user
get_valid_number <- function(prompt) {
    # Loop until a valid number is entered
  while (TRUE) {
    input <- readline(prompt = prompt)
    number <- as.integer(input)
    if (!is.na(number)) {
      return(number)
    } else {
        # Print an error message if the input is not a valid number
      cat("Invalid input. Please enter a valid number.\n")
    }
  }
}

# Get two numbers from the user
a <- get_valid_number("Enter the first number: ")
b <- get_valid_number("Enter the second number: ")

result <- multiply(a, b)
# Print the result
cat("The product of", a, "and", b, "is:", result, "\n")
