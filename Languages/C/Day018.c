// Languages - C - Day 18
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_LEN 1000

void countCharacters(const char *str)
{
    int charCount[26] = {0};

    for (int i = 0; str[i] != '\0'; i++)
    {
        char c = str[i];
        if (isalpha(c))
        {
            charCount[tolower(c) - 'a']++;
        }
    }

    printf("\nCharacter occurrence in the input string:\n");
    for (int i = 0; i < 26; i++)
    {
        if (charCount[i] > 0)
        {
            printf("'%c': %d\n", 'a' + i, charCount[i]);
        }
    }
}

int main()
{
    char str[MAX_LEN];

    printf("Enter a string (up to %d characters): ", MAX_LEN - 1);
    if (fgets(str, sizeof(str), stdin) != NULL)
    {
        // Remove trailing newline character if exists
        str[strcspn(str, "\n")] = '\0';

        if (strlen(str) == 0)
        {
            printf("Error: Input cannot be empty.\n");
            return 1;
        }

        countCharacters(str);
    }
    else
    {
        printf("Error: Failed to read input.\n");
        return 1;
    }

    return 0;
}
