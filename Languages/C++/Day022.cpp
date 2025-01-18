// Languages - C++ - Day 22
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that removes all duplicate characters from a string while preserving the original order.


#include <iostream>
#include <unordered_set>
#include <string>

// removeDuplicates removes duplicate characters from a string while preserving the original order.
std::string removeDuplicates(const std::string& input) {
    std::unordered_set<char> seen;
    std::string result;
    for (char ch : input) {
        if (seen.find(ch) == seen.end()) {
            seen.insert(ch);
            result += ch;
        }
    }
    return result;
}

int main() {
    std::string input;
    std::cout << "Enter a string: ";
    std::getline(std::cin, input);
    if (input.empty()) {
        std::cout << "Input cannot be empty." << std::endl;
        return 1;
    }
    std::cout << "String after removing duplicates: " << removeDuplicates(input) << std::endl;
    return 0;
}
