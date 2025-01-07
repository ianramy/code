// Languages - C - Day 10
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

#include <stdio.h>

int main()
{
    int num;
    char buffer[100];

    while (1)
    {
        printf("Enter a positive number: ");

        if (fgets(buffer, sizeof(buffer), stdin) != NULL)
        {
            if (sscanf(buffer, "%d", &num) == 1)
            {
                if (num > 0)
                {
                    break;
                }
                else
                {
                    printf("The number must be positive. Please try again.\n");
                }
            }
            else
            {
                printf("Invalid input. Please enter a valid number.\n");
            }
        }
        else
        {
            printf("Error reading input. Please try again.\n");
        }
    }

    printf("You entered: %d\n", num);
    return 0;
}
