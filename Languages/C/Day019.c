// Languages - C - Day 19
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


#include <stdio.h>

// Function to check if a number is a Perfect Number
int isPerfect(int num)
{
    if (num <= 0)
    {
        return 0; // Perfect numbers must be positive integers
    }

    int sum = 0;
    // Loop only up to num / 2 for efficiency
    for (int i = 1; i <= num / 2; i++)
    {
        if (num % i == 0)
        {
            sum += i;
        }
    }
    return sum == num;
}

// Function to validate user input
int getValidInput()
{
    int num;
    while (1)
    {
        printf("Enter a positive integer to check if it's a Perfect Number: ");
        if (scanf("%d", &num) != 1)
        {
            printf("⚠️ Invalid input. Please enter a valid integer.\n");
            while (getchar() != '\n')
                ; // Clear the input buffer
        }
        else if (num > 0)
        {
            return num;
        }
        else
        {
            printf("⚠️ Please enter a positive integer.\n");
        }
    }
}

int main()
{
    int num = getValidInput();

    if (isPerfect(num))
    {
        printf("🎉 %d is a Perfect Number!\n", num);
    }
    else
    {
        printf("❌ %d is not a Perfect Number.\n", num);
    }

    return 0;
}
