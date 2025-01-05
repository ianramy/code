# Languages - R - Day 9
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

calculate_sum_in_range <- function(start_range, end_range) {
  sum <- 0
  for (i in start_range:end_range) {
    print(i)
    sum <- sum + i
  }
  print(paste("The sum of the numbers from", start_range, "to", end_range, "is:", sum))
}

calculate_sum_in_range(1, 10)
