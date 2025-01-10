# Languages - R - Day 14
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

# Function to reverse a string
reverse_string <- function(string) {
  paste(rev(strsplit(string, "")[[1]]), collapse = "")
}

# Function to validate input
is_valid_input <- function(input) {
  nchar(trimws(input)) > 0
}

# Ask the user for input with validation
repeat {
  user_input <- readline(prompt = "Enter a non-empty string: ")
  
  if (is_valid_input(user_input)) {
    break
  } else {
    cat("Invalid input. Please enter a non-empty string.\n")
  }
}

# Call the function and print the reversed string
cat("Reversed string:", reverse_string(user_input), "\n")
