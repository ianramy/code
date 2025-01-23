# Languages - R - Day 27
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that counts how many vowels are in a given string.


# Function to count vowels in a given string
count_vowels <- function(input) {
  vowels <- c('a', 'e', 'i', 'o', 'u')
  input <- tolower(input)  # Convert input to lowercase
  sum(strsplit(input, NULL)[[1]] %in% vowels)
}

while (TRUE) {
  cat("Enter a string to count vowels (or type 'exit' to quit):\n")
  input <- readline()

  if (tolower(input) == "exit") {
    cat("Exiting program. Goodbye!\n")
    break
  }

  if (nchar(input) == 0) {
    cat("Input cannot be empty. Please enter a valid string.\n")
    next
  }

  vowel_count <- count_vowels(input)
  cat("Number of vowels in the given string:", vowel_count, "\n")
}
