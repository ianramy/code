// Languages - C++ - Day 14
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

#include <iostream>
#include <string>
#include <algorithm>
#include <cctype>

using namespace std;

// Function to reverse a string
string reverseString(string str)
{
    int length = str.length();
    for (int i = 0; i < length / 2; i++)
    {
        swap(str[i], str[length - i - 1]);
    }
    return str;
}

// Function to check if the input is valid (non-empty and not just spaces)
bool isValidInput(const string &str)
{
    return !str.empty() && any_of(str.begin(), str.end(), [](char c)
    { return !isspace(c); });
}

int main()
{
    string str;

    // Input validation loop
    do
    {
        cout << "Enter a non-empty string: ";
        getline(cin, str);

        if (!isValidInput(str))
        {
            cout << "Invalid input. Please enter a non-empty string.\n";
        }
    } while (!isValidInput(str));

    // Call the reverseString function and print the result
    cout << "Reversed string: " << reverseString(str) << endl;

    return 0;
}
