// Languages - C - Day 16
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

#include <stdio.h>
#include <math.h>

// Function to check if a number is an Armstrong Number
int isArmstrong(int num)
{
    if (num < 0)
    {
        printf("Please enter a positive integer.\n");
        return 0;
    }

    int temp = num, sum = 0, digits = 0;

    // Count the number of digits
    while (temp != 0)
    {
        digits++;
        temp /= 10;
    }

    temp = num;

    // Calculate the sum of digits raised to the power of digits
    while (temp != 0)
    {
        int digit = temp % 10;
        sum += pow(digit, digits);
        temp /= 10;
    }

    return sum == num;
}

// Function to prompt user input
void promptUser()
{
    int num;
    printf("Enter a positive integer to check if it's an Armstrong Number: ");

    // Input validation
    if (scanf("%d", &num) != 1 || num < 0)
    {
        printf("Invalid input. Please enter a valid positive integer.\n");
        return;
    }

    // Check if the number is an Armstrong Number
    if (isArmstrong(num))
    {
        printf("%d is an Armstrong Number.\n", num);
    }
    else
    {
        printf("%d is not an Armstrong Number.\n", num);
    }
}

int main()
{
    promptUser();

    // Additional test cases
    printf("%d is %san Armstrong Number.\n", 153, isArmstrong(153) ? "" : "not ");
    printf("%d is %san Armstrong Number.\n", 9474, isArmstrong(9474) ? "" : "not ");
    printf("%d is %san Armstrong Number.\n", 9475, isArmstrong(9475) ? "" : "not ");

    return 0;
}
