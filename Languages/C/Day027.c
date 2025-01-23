// Languages - C - Day 27
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many vowels are in a given string.


#include <stdio.h>
#include <string.h>
#include <ctype.h>

// Function to count vowels in a given string
int countVowels(const char *input)
{
    int count = 0;
    while (*input)
    {
        char ch = tolower(*input);
        if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
        {
            count++;
        }
        input++;
    }
    return count;
}

int main()
{
    char input[100];
    char choice;

    do
    {
        printf("Enter a string to count the number of vowels: ");
        fgets(input, sizeof(input), stdin);

        // Remove newline character
        input[strcspn(input, "\n")] = 0;

        if (strlen(input) == 0)
        {
            printf("Invalid input. Please enter a non-empty string.\n");
            continue;
        }

        int vowelCount = countVowels(input);
        printf("The number of vowels in the given string is: %d\n", vowelCount);

        printf("Would you like to try another string? (y/n): ");
        scanf(" %c", &choice);
        while (getchar() != '\n')
            ; // Clear buffer

    } while (choice == 'y' || choice == 'Y');

    printf("Exiting program. Goodbye!\n");
    return 0;
}
