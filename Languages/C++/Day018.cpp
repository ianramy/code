// Languages - C++ - Day 18
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

#include <iostream>
#include <string>
#include <map>
#include <cctype>

// Function to count characters
std::map<char, int> countCharacters(const std::string &str)
{
    std::map<char, int> charCount;
    for (char c : str)
    {
        if (std::isalpha(c))
        { // Count only alphabetic characters
            charCount[std::tolower(c)]++;
        }
    }
    return charCount;
}

int main()
{
    std::string input;

    std::cout << "Enter a string: ";
    std::getline(std::cin, input);

    if (input.empty())
    {
        std::cout << "Error: Input cannot be empty." << std::endl;
        return 1;
    }

    std::map<char, int> charCount = countCharacters(input);

    if (charCount.empty())
    {
        std::cout << "No alphabetic characters found in the input." << std::endl;
        return 0;
    }

    std::cout << "\nCharacter occurrence in the input string:\n";
    for (const auto &pair : charCount)
    {
        std::cout << "'" << pair.first << "': " << pair.second << std::endl;
    }

    return 0;
}
