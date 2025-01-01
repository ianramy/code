// Languages - C - Day 5
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that asks the user for their name and then prints a personalized greeting with their name.

#include <stdio.h>

int main()
{
    char name[100];
    printf("Enter your name: ");
    fgets(name, sizeof(name), stdin);
    name[strcspn(name, "\n")] = '\0';
    printf("Happy New Year %s!\n", name);
    return 0;
}
