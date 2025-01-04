// Languages - C++ - Day 8
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

#include <iostream>
#include <string>
#include <cctype>

int main()
{
    std::string firstName;
    std::string lastName;
    std::string fullName;

    std::cout << "Enter your first name: ";
    std::cin >> firstName;

    if (firstName.empty())
    {
        std::cout << "First name cannot be empty." << std::endl;
        return 1;
    }

    std::cout << "Enter your last name: ";
    std::cin >> lastName;

    if (lastName.empty())
    {
        std::cout << "Last name cannot be empty." << std::endl;
        return 1;
    }

    fullName = firstName + " " + lastName;

    char firstInitial = std::toupper(firstName[0]);
    char lastInitial = std::toupper(lastName[0]);

    std::cout << "Hello, " << fullName << "! Your initials are " << firstInitial << "." << lastInitial << "." << std::endl;

    return 0;
}
