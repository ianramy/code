# Languages - R - Day 26
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that determines if a given number is a Happy Number. 


is_happy_number <- function(num) {
  seen_numbers <- integer(0)
  while (num != 1 && !(num %in% seen_numbers)) {
    seen_numbers <- c(seen_numbers, num)
    num <- calculate_sum_of_squares(num)
  }
  return(num == 1)
}

calculate_sum_of_squares <- function(num) {
  digits <- as.integer(strsplit(as.character(num), "")[[1]])
  sum(digits^2)
}

repeat {
  cat("Enter a number: ")
  input <- as.integer(readLines(con = "stdin", n = 1))
  
  if (is.na(input)) {
    cat("Invalid input. Please enter an integer.\n")
  } else if (input < 0) {
    cat("Negative numbers are not considered Happy Numbers.\n")
  } else {
    result <- is_happy_number(input)
    cat("The number", input, "is", ifelse(result, "a Happy Number.", "not a Happy Number."), "\n")
    break
  }
}
