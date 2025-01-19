// Languages - C++ - Day 23
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


#include <iostream>
#include <iomanip>
#include <limits>

// Recursive function to compute power
double power(double x, int n)
{
    if (n == 0)
    {
        return 1;
    }
    else if (n < 0)
    {
        return 1.0 / power(x, -n);
    }
    else
    {
        return x * power(x, n - 1);
    }
}

int main()
{
    double base;
    int exponent;

    // Get the base number and exponent from the user
    std::cout << "Enter the base number: ";
    while (!(std::cin >> base))
    {
        std::cerr << "Invalid input for base number. Please enter a numeric value: ";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }

    std::cout << "Enter the exponent: ";
    while (!(std::cin >> exponent))
    {
        std::cerr << "Invalid input for exponent. Please enter an integer value: ";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }

    if (base == 0 && exponent == 0)
    {
        std::cout << "0^0 is undefined." << std::endl;
    }
    else
    {
        // Calculate the result and display it
        double result = power(base, exponent);
        std::cout << std::fixed << std::setprecision(6);
        std::cout << base << "^" << exponent << " = " << result << std::endl;
    }

    return 0;
}
