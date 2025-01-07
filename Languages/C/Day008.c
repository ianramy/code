// Languages - C - Day 8
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main()
{
    char firstName[20];
    char lastName[20];
    char fullName[40];
    char greeting[100];

    printf("Enter your first name: ");
    scanf("%19s", firstName);

    if (strlen(firstName) == 0)
    {
        printf("First name cannot be empty.\n");
        return 1;
    }

    printf("Enter your last name: ");
    scanf("%19s", lastName);

    if (strlen(lastName) == 0)
    {
        printf("Last name cannot be empty.\n");
        return 1;
    }

    strcpy(fullName, firstName);
    strcat(fullName, " ");
    strcat(fullName, lastName);

    char firstInitial = toupper(firstName[0]);
    char lastInitial = toupper(lastName[0]);

    sprintf(greeting, "Hello, %s! Your initials are %c.%c.", fullName, firstInitial, lastInitial);

    printf("%s\n", greeting);

    return 0;
}
