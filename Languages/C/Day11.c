// Languages - C - Day 11
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

#include <stdio.h>

// Function to calculate the product of two numbers
int multiply(int a, int b)
{
    return a * b;
}

// Main function
int main()
{
    int a, b;

    // Get the first number from the user
    printf("Enter the first number: ");
    while (scanf("%d", &a) != 1)
    { // Check if the input is a valid integer
        printf("Invalid input. Please enter a valid integer: ");
        while (getchar() != '\n')
            ;
    }

    // Get the second number from the user
    printf("Enter the second number: ");
    while (scanf("%d", &b) != 1)
    { // Check if the input is a valid integer
        printf("Invalid input. Please enter a valid integer: ");
        while (getchar() != '\n')
            ;
    }

    // Calculate and display the product
    int result = multiply(a, b);
    printf("The product of %d and %d is %d.\n", a, b, result);

    return 0;
}
