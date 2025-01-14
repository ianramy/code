# Languages - R - Day 18
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

# Function to count only alphabetic characters
charCount <- function(str) {
  str <- tolower(str)
  str <- gsub("[^a-z]", "", str)
  if (nchar(str) == 0) return(NULL)
  str <- strsplit(str, "")[[1]]
  unique_chars <- unique(str)
  char_count <- sapply(unique_chars, function(x) sum(str == x))
  names(char_count) <- unique_chars
  return(char_count)
}

# Ask the user for a string
str <- readline(prompt = "Enter a string: ")

# Input validation
if (nchar(trimws(str)) == 0) {
  cat("Error: Input cannot be empty.\n")
} else {
  # Count the characters in the string
  char_count <- charCount(str)
  
  if (is.null(char_count)) {
    cat("No alphabetic characters found in the input.\n")
  } else {
    cat("\nCharacter occurrence in the input string:\n")
    for (i in seq_along(char_count)) {
      cat("'", names(char_count)[i], "': ", char_count[i], "\n", sep = "")
    }
  }
}
