// Languages - C - Day 26
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that determines if a given number is a Happy Number.

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// Function to calculate the sum of squares of digits
int sumOfSquares(int num)
{
    int sum = 0;
    while (num > 0)
    {
        int digit = num % 10;
        sum += digit * digit;
        num /= 10;
    }
    return sum;
}

// Function to determine if a number is a Happy Number
bool isHappyNumber(int num)
{
    int seen[1000] = {0};
    while (num != 1 && seen[num] == 0)
    {
        seen[num] = 1;
        num = sumOfSquares(num);
    }
    return num == 1;
}

int main()
{
    int num;
    char choice;

    do
    {
        printf("Enter a number: ");
        while (scanf("%d", &num) != 1)
        {
            while (getchar() != '\n')
                ;
            printf("Invalid input. Please enter an integer: ");
        }

        if (num < 0)
        {
            printf("Negative numbers cannot be Happy Numbers.\n");
        }
        else
        {
            if (isHappyNumber(num))
            {
                printf("%d is a Happy Number.\n", num);
            }
            else
            {
                printf("%d is not a Happy Number.\n", num);
            }
        }

        printf("Do you want to check another number? (y/n): ");
        while (getchar() != '\n')
            ;
        choice = getchar();

    } while (choice == 'y' || choice == 'Y');

    printf("Exiting program. Goodbye!\n");

    return 0;
}
