# Languages - R - Day 15
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

# Define the function with input validation and normalization
is_palindrome <- function(string) {
  # Trim whitespace and check for empty input
  if (nchar(trimws(string)) == 0) {
    return(FALSE)
  }
  
  # Normalize the string: remove non-alphanumeric characters and convert to lowercase
  normalized <- tolower(gsub("[^a-zA-Z0-9]", "", string))
  
  # Reverse the string correctly
  reversed <- paste(rev(strsplit(normalized, NULL)[[1]]), collapse = "")
  
  # Check if the normalized string is equal to its reverse
  return(normalized == reversed)
}

# Ask the user for a string
string <- readline(prompt = "Enter a string: ")

# Input validation
if (nchar(trimws(string)) == 0) {
  cat("Invalid input. Please enter a non-empty string.\n")
} else {
  # Check if the string is a palindrome
  if (is_palindrome(string)) {
    cat(sprintf("\"%s\" is a palindrome.\n", string))
  } else {
    cat(sprintf("\"%s\" is not a palindrome.\n", string))
  }
}
