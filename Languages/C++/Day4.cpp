// Languages - C++ - Day 4
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

#include <iostream>
#include <limits>

int factorial(int n)
{
    if (n == 0)
    {
        return 1;
    }
    return n * factorial(n - 1);
}

int main()
{
    int n;

    std::cout << "Enter a number to calculate its factorial: ";
    std::cin >> n;

    if (std::cin.fail() || n < 0)
    {
        std::cout << "Invalid input. Please enter a non-negative integer." << std::endl;
    }
    else if (n > 12)
    {
        std::cout << "Input too large! Factorial exceeds the range of int." << std::endl;
    }
    else
    {
        std::cout << "Factorial of " << n << " is " << factorial(n) << std::endl;
    }

    return 0;
}
