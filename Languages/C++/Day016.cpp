// Languages - C++ - Day 16
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

#include <iostream>
#include <cmath>
#include <limits>

// Function to check if a number is an Armstrong Number
bool isArmstrong(int num)
{
    if (num < 0)
    {
        std::cout << "Please enter a positive integer." << std::endl;
        return false;
    }

    int temp = num, sum = 0, digits = 0;

    // Count the number of digits
    while (temp != 0)
    {
        digits++;
        temp /= 10;
    }

    temp = num;

    // Calculate the sum of digits raised to the power of the number of digits
    while (temp != 0)
    {
        sum += pow(temp % 10, digits);
        temp /= 10;
    }

    return sum == num;
}

// Function to prompt user input
void promptUser()
{
    int num;
    std::cout << "Enter a positive integer to check if it's an Armstrong Number: ";

    while (!(std::cin >> num) || num < 0)
    {
        std::cout << "Invalid input. Please enter a valid positive integer: ";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }

    if (isArmstrong(num))
    {
        std::cout << num << " is an Armstrong Number." << std::endl;
    }
    else
    {
        std::cout << num << " is not an Armstrong Number." << std::endl;
    }
}

int main()
{
    promptUser();
    return 0;
}
