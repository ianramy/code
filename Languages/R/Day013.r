# Languages - R - Day 13
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

# Define a function that calculates the sum of an array
sum_of_elements <- function(arr) {
  sum(arr)
}

# Prompt the user for input
input_numbers <- readline(prompt = "Enter a list of numbers separated by commas (e.g., 1,2,3): ")

# Validate the input
if (nchar(input_numbers) == 0 || !grepl("^\\s*[0-9]+(\\s*,\\s*[0-9]+)*\\s*$", input_numbers)) {
  cat("Invalid input. Please enter a list of numbers separated by commas.\n")
  quit(save = "no", status = 1)
}

# Convert the input string into a numeric array
numbers <- as.numeric(unlist(strsplit(gsub("\\s+", "", input_numbers), ",")))

# Check if any elements failed to convert
if (any(is.na(numbers))) {
  cat("Invalid input. Ensure all elements are valid numbers.\n")
  quit(save = "no", status = 1)
}

# Calculate and display the sum
result <- sum_of_elements(numbers)
cat("The sum of all elements is:", result, "\n")
