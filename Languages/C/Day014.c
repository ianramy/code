// Languages - C - Day 14
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

#include <stdio.h>
#include <string.h>
#include <ctype.h>

// Function to reverse a string
void reverseString(char *str)
{
    int length = strlen(str);
    for (int i = 0; i < length / 2; i++)
    {
        char temp = str[i];
        str[i] = str[length - i - 1];
        str[length - i - 1] = temp;
    }
}

// Function to validate input (non-empty and not just whitespace)
int isValidInput(char *str)
{
    for (int i = 0; str[i] != '\0'; i++)
    {
        if (!isspace(str[i]))
        {
            return 1; // Valid input
        }
    }
    return 0; // Invalid input
}

int main()
{
    char str[100];

    // Input validation loop
    while (1)
    {
        printf("Enter a non-empty string: ");
        if (fgets(str, sizeof(str), stdin) != NULL)
        {
            // Remove trailing newline character if it exists
            str[strcspn(str, "\n")] = '\0';

            if (isValidInput(str))
            {
                break;
            }
            else
            {
                printf("Invalid input. Please enter a non-empty string.\n");
            }
        }
    }

    // Reverse and print the string
    reverseString(str);
    printf("Reversed string: %s\n", str);

    return 0;
}
