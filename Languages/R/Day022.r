# Languages - R - Day 22
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that removes all duplicate characters from a string while preserving the original order.


# Function to remove duplicates from a string
remove_duplicates <- function(input) {
  if (is.null(input) || trimws(input) == "") {
    return("Input cannot be empty.")
  }
  seen <- character(0)
  result <- ""
  for (char in strsplit(input, NULL)[[1]]) {
    if (!(char %in% seen)) {
      seen <- c(seen, char)
      result <- paste0(result, char)
    }
  }
  return(result)
}

# Get user input and display the result
cat("Enter a string:\n")
input <- readline()

if (trimws(input) == "") {
  cat("Input cannot be empty.\n")
} else {
  result <- remove_duplicates(input)
  cat("String after removing duplicates:", result, "\n")
}
