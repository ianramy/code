# Languages - R - Day 7
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

main <- function() {
    n <- as.integer(readline(prompt = "Enter the number of elements in the array: "))
    
    if (is.na(n) || n <= 0) {
        cat("Invalid input. Please enter a positive integer.\n")
        return()
    }
    
    arr <- numeric(0)
    
    for (i in 1:n) {
        element <- as.numeric(readline(prompt = paste("Enter element", i, ": ")))
        if (is.na(element)) {
            cat("Invalid input. Please enter a numeric value.\n")
            return()
        }
        arr <- c(arr, element)
    }
    
    sum <- sum(arr)
    avg <- mean(arr)
    
    cat("Sum:", sum, "\n")
    cat("Average:", avg, "\n")
    
    if (avg > 50) {
        cat("Above average\n")
    } else if (avg < 50) {
        cat("Below average\n")
    } else {
        cat("Average is exactly 50\n")
    }
}

main()
