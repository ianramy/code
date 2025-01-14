# Languages - Python - Day 18
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.


def count_characters(string):
    string = string.lower()
    count = {}
    for char in string:
        if char.isalpha():
            count[char] = count.get(char, 0) + 1
    return count


# Ask user for input
string = input("Enter a string: ").strip()

# Input validation
if not string:
    print("Error: Input cannot be empty.")
else:
    result = count_characters(string)

    if not result:
        print("No alphabetic characters found in the input.")
    else:
        print("\nCharacter occurrence in the input string:")
        for char, freq in sorted(result.items()):
            print(f"'{char}': {freq}")
