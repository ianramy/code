// Languages - C++ - Day 15
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

#include <iostream>
#include <string>
#include <algorithm>
#include <cctype>
using namespace std;

// Function to normalize and check if a string is a palindrome
bool isPalindrome(const string &str)
{
    string normalized;

    // Normalize the string: remove non-alphanumeric characters and convert to lowercase
    for (char ch : str)
    {
        if (isalnum(ch))
        {
            normalized += tolower(ch);
        }
    }

    // Input validation: check if normalized string is empty
    if (normalized.empty())
    {
        return false;
    }

    // Compare characters from both ends
    int n = normalized.length();
    for (int i = 0; i < n / 2; i++)
    {
        if (normalized[i] != normalized[n - i - 1])
        {
            return false;
        }
    }
    return true;
}

int main()
{
    // Ask the user for a string
    string str;
    cout << "Enter a string: ";
    getline(cin, str);

    // Input validation
    if (str.empty())
    {
        cout << "Invalid input. Please enter a non-empty string." << endl;
        return 0;
    }

    // Check if the string is a palindrome
    if (isPalindrome(str))
    {
        cout << "\"" << str << "\" is a palindrome." << endl;
    }
    else
    {
        cout << "\"" << str << "\" is not a palindrome." << endl;
    }

    return 0;
}
