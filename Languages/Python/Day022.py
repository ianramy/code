# Languages - Python - Day 22
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that removes all duplicate characters from a string while preserving the original order.


def remove_duplicates(input_string):
    """
    Removes duplicate characters from a string while preserving the original order.
    """
    if not input_string.strip():
        return "Input cannot be empty."

    seen = set()
    result = []
    for char in input_string:
        if char not in seen:
            seen.add(char)
            result.append(char)
    return "".join(result)


# Get user input and display the result
input_string = input("Enter a string: ").strip()

if not input_string:
    print("Input cannot be empty.")
else:
    result = remove_duplicates(input_string)
    print("String after removing duplicates:", result)
