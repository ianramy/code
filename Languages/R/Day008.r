# Languages - R - Day 8
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

greeting <- function(first_name, last_name) {
  full_name <- paste(first_name, last_name, sep = " ")
  first_initial <- substr(first_name, 1, 1)
  last_initial <- substr(last_name, 1, 1)
  message <- paste("Hello,", full_name, "!", "Your initials are", first_initial, ".", last_initial, ".")
  return(message)
}

cat("Please enter your first name: ")
first_name <- readline()

if (nchar(trimws(first_name)) == 0) {
  stop("First name cannot be empty.")
}

cat("Please enter your last name: ")
last_name <- readline()

if (nchar(trimws(last_name)) == 0) {
  stop("Last name cannot be empty.")
}

greeting_message <- greeting(first_name, last_name)
cat(greeting_message, "\n")
