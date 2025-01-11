# Languages - Python - Day 15
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

import re

def is_palindrome(string):
    # Normalize the string: remove non-alphanumeric characters and convert to lowercase
    normalized = re.sub(r"[^A-Za-z0-9]", "", string).lower()

    # Check for empty input after normalization
    if not normalized:
        return False

    # Check if the normalized string is equal to its reverse
    return normalized == normalized[::-1]


# Ask the user for a string
string = input("Enter a string: ").strip()

# Input validation
if not string:
    print("Invalid input. Please enter a non-empty string.")
else:
    # Check if the string is a palindrome
    if is_palindrome(string):
        print(f'"{string}" is a palindrome.')
    else:
        print(f'"{string}" is not a palindrome.')
