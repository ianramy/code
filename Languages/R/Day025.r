# Languages - R - Day 25
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that converts a Decimal Number to Binary without using built-in conversion functions.


decimal_to_binary <- function(number) {
  if (number == 0) {
    return("0")
  }

  num <- abs(number)
  binary <- ""
  
  while (num > 0) {
    binary <- paste0(num %% 2, binary)
    num <- num %/% 2
  }

  if (number < 0) {
    binary <- paste0("-", binary)
  }

  return(binary)
}

cat("Enter a decimal number:\n")
input <- trimws(readLines("stdin", n = 1))

if (grepl("^-?\\d+$", input)) {
  number <- as.integer(input)
  binary <- decimal_to_binary(number)
  cat("Binary representation:", binary, "\n")
} else {
  cat("Invalid input. Please enter a valid integer.\n")
}
