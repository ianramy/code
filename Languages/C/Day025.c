// Languages - C - Day 25
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that converts a Decimal Number to Binary without using built-in conversion functions.


#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

void decimalToBinary(int n, char *binary)
{
    if (n == 0)
    {
        binary[0] = '0';
        binary[1] = '\0';
        return;
    }

    int isNegative = (n < 0);
    unsigned int num = abs(n);
    int i = 0;

    while (num > 0)
    {
        binary[i++] = (num % 2 == 0 ? '0' : '1');
        num /= 2;
    }

    if (isNegative)
    {
        binary[i++] = '-';
    }

    binary[i] = '\0';

    for (int j = 0; j < i / 2; ++j)
    {
        char temp = binary[j];
        binary[j] = binary[i - j - 1];
        binary[i - j - 1] = temp;
    }
}

int main()
{
    int input;
    char binary[CHAR_BIT * sizeof(int) + 2];
    printf("Enter a decimal number: ");

    if (scanf("%d", &input) != 1)
    {
        printf("Invalid input. Please enter an integer.\n");
        return 1;
    }

    decimalToBinary(input, binary);
    printf("Binary representation: %s\n", binary);

    return 0;
}
