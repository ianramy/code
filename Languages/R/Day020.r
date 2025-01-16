# Languages - R - Day 20
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that sorts an array using the Bubble Sort algorithm.


# Bubble Sort Function
bubble_sort <- function(arr) {
  n <- length(arr)
  for (i in 1:(n - 1)) {
    swapped <- FALSE
    for (j in 1:(n - i)) {
      if (arr[j] > arr[j + 1]) {
        temp <- arr[j]
        arr[j] <- arr[j + 1]
        arr[j + 1] <- temp
        swapped <- TRUE
      }
    }
    if (!swapped) break
  }
  return(arr)
}

# Function to validate numeric input
get_valid_number <- function(prompt_message) {
  while (TRUE) {
    input <- readline(prompt_message)
    num <- suppressWarnings(as.numeric(input))
    
    if (is.na(num)) {
      cat("Invalid input. Please enter a valid number.\n")
    } else {
      return(num)
    }
  }
}

# Function to collect elements from user
get_elements <- function(n) {
  arr <- numeric(n)
  for (i in 1:n) {
    arr[i] <- get_valid_number(sprintf("Enter element %d: ", i))
  }
  return(arr)
}

# Ask for the number of elements
n <- get_valid_number("Enter the number of elements in the array: ")

while (n <= 0 || n %% 1 != 0) {
  cat("Please enter a positive integer.\n")
  n <- get_valid_number("Enter the number of elements in the array: ")
}

# Collect array elements
arr <- get_elements(n)

# Display original array
cat("Original array:", paste(arr, collapse = " "), "\n")

# Sort the array
sorted_arr <- bubble_sort(arr)

# Display sorted array
cat("Sorted array:", paste(sorted_arr, collapse = " "), "\n")
