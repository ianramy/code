// Languages - C++ - Day 21
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


#include <iostream>
#include <string>
#include <sstream>
#include <cstdlib>

// Function to calculate the Greatest Common Divisor (GCD) using the Euclidean Algorithm
int gcd(int a, int b)
{
    a = std::abs(a);
    b = std::abs(b);

    if (a == 0 && b == 0)
    {
        return -1;
    }

    while (b != 0)
    {
        int temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

// Function to validate and parse integer input
bool getValidInteger(const std::string &prompt, int &num)
{
    std::string input;
    std::cout << prompt;
    std::getline(std::cin, input);
    std::stringstream ss(input);
    return (ss >> num) && ss.eof();
}

// Main function
int main()
{
    int num1, num2;

    if (!getValidInteger("Enter the first number:\n", num1))
    {
        std::cout << "Invalid input. Please enter a valid integer." << std::endl;
        return 1;
    }

    if (!getValidInteger("Enter the second number:\n", num2))
    {
        std::cout << "Invalid input. Please enter a valid integer." << std::endl;
        return 1;
    }

    int result = gcd(num1, num2);
    if (result == -1)
    {
        std::cout << "GCD is undefined for inputs 0 and 0." << std::endl;
    }
    else
    {
        std::cout << "The GCD of " << num1 << " and " << num2 << " is " << result << "." << std::endl;
    }

    return 0;
}
