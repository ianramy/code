# Languages - R - Day 24
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that lists all Prime Numbers up to a given number n.


is_prime <- function(num) {
  if (num <= 1) return(FALSE)
  if (num == 2 || num == 3) return(TRUE)
  if (num %% 2 == 0 || num %% 3 == 0) return(FALSE)
  i <- 5
  while (i * i <= num) {
    if (num %% i == 0 || num %% (i + 2) == 0) return(FALSE)
    i <- i + 6
  }
  return(TRUE)
}

list_primes <- function(n) {
  if (n < 0) {
    cat("Please enter a non-negative number.\n")
    return(integer(0))
  }
  if (n < 2) {
    return(integer(0))
  }
  return(Filter(is_prime, 2:n))
}

cat("Enter a number: ")
input <- suppressWarnings(as.integer(readLines("stdin", n = 1)))

if (!is.na(input) && input >= 0) {
  primes <- list_primes(input)
  if (length(primes) == 0) {
    cat("No prime numbers found up to", input, "\n")
  } else {
    cat("Prime numbers up to", input, ":", paste(primes, collapse = ", "), "\n")
  }
} else {
  cat("Invalid input. Please enter a valid non-negative number.\n")
}
