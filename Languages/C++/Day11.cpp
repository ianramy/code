// Languages - C++ - Day 11
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

#include <iostream>
#include <limits>

// Function to calculate the product of two numbers
int multiply(int a, int b)
{
    return a * b;
}

// Function to get valid input from the user
int getValidNumber(const std::string &prompt)
{
    int num;
    while (true)
    { // Loop until valid input is received
        std::cout << prompt;
        std::cin >> num;
        if (std::cin.fail())
        {
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
            // Throw an error message if the input is invalid
            std::cout << "Invalid input. Please enter a valid number.\n";
        }
        else
        {
            return num;
        }
    }
}

// Main function
int main()
{
    // Get input from the user
    int a = getValidNumber("Enter the first number: ");
    int b = getValidNumber("Enter the second number: ");

    // Calculate and display the result
    int result = multiply(a, b);
    std::cout << "The product of " << a << " and " << b << " is " << result << "." << std::endl;

    return 0;
}
