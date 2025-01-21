// Languages - C++ - Day 25
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that converts a Decimal Number to Binary without using built-in conversion functions.


#include <iostream>
#include <string>
#include <algorithm>

std::string decimalToBinary(int n)
{
    if (n == 0)
        return "0";

    bool isNegative = (n < 0);
    unsigned int num = std::abs(n);

    std::string binary;
    while (num > 0)
    {
        binary.insert(0, 1, (num % 2 == 0 ? '0' : '1'));
        num /= 2;
    }

    if (isNegative)
    {
        binary.insert(0, "-");
    }

    return binary;
}

int main()
{
    std::cout << "Enter a decimal number: ";
    int input;
    if (!(std::cin >> input))
    {
        std::cerr << "Invalid input. Please enter an integer." << std::endl;
        return 1;
    }

    std::cout << "Binary representation: " << decimalToBinary(input) << std::endl;
    return 0;
}
