// Languages - C - Day 15
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

#include <stdio.h>
#include <string.h>
#include <ctype.h>

// Function to normalize the string (remove non-alphanumeric characters and convert to lowercase)
void normalizeString(char *str, char *normalized)
{
    int j = 0;
    for (int i = 0; str[i] != '\0'; i++)
    {
        if (isalnum(str[i]))
        { // Keep only alphanumeric characters
            normalized[j++] = tolower(str[i]);
        }
    }
    normalized[j] = '\0';
}

// Function to check if the string is a palindrome
int isPalindrome(char str[])
{
    int n = strlen(str);
    for (int i = 0; i < n / 2; i++)
    {
        if (str[i] != str[n - i - 1])
        {
            return 0;
        }
    }
    return 1;
}

int main()
{
    // Ask the user for a string
    char str[1000];
    char normalized[1000];

    printf("Enter a string: ");
    if (fgets(str, sizeof(str), stdin) == NULL)
    {
        printf("Error reading input.\n");
        return 1;
    }

    // Remove the trailing newline character if present
    str[strcspn(str, "\n")] = '\0';

    // Input validation
    if (strlen(str) == 0)
    {
        printf("Invalid input. Please enter a non-empty string.\n");
        return 1;
    }

    // Normalize the input
    normalizeString(str, normalized);

    // Check if the normalized string is empty (input had only non-alphanumeric characters)
    if (strlen(normalized) == 0)
    {
        printf("Invalid input. Please enter a string with alphanumeric characters.\n");
        return 1;
    }

    // Check if the string is a palindrome
    if (isPalindrome(normalized))
    {
        printf("\"%s\" is a palindrome.\n", str);
    }
    else
    {
        printf("\"%s\" is not a palindrome.\n", str);
    }

    return 0;
}
