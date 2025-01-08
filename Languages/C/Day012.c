// Languages - C - Day 12
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <stdbool.h>

// Function to find the larger of two numbers
int larger(int a, int b)
{
    return (a > b) ? a : b;
}

// Function to validate and get an integer from the user
int getValidNumber(const char *prompt)
{
    int number;
    char input[100];
    bool valid = false;

    while (!valid)
    {
        printf("%s", prompt);
        if (fgets(input, sizeof(input), stdin) != NULL)
        {
            // Try to parse the input as an integer
            char *endptr;
            number = strtol(input, &endptr, 10);

            // Check if the entire input was parsed
            if (*endptr == '\n' || *endptr == '\0')
            {
                valid = true;
            }
            else
            {
                printf("Invalid input. Please enter a valid integer.\n");
            }
        }
    }

    return number;
}

int main()
{
    // Get two valid numbers from the user
    int num1 = getValidNumber("Enter the first number: ");
    int num2 = getValidNumber("Enter the second number: ");

    // Call the function and print the result
    int result = larger(num1, num2);
    printf("The larger number is: %d\n", result);

    return 0;
}
