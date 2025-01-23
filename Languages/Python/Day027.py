# Languages - Python - Day 27
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that counts how many vowels are in a given string.


# Function to count vowels in a given string
def count_vowels(input_str):
    vowels = {"a", "e", "i", "o", "u"}
    return sum(1 for char in input_str.lower() if char in vowels)


while True:
    user_input = input(
        "Enter a string to count vowels (or type 'exit' to quit): "
    ).strip()

    if user_input.lower() == "exit":
        print("Exiting program. Goodbye!")
        break

    if not user_input:
        print("Input cannot be empty. Please enter a valid string.")
        continue

    vowel_count = count_vowels(user_input)
    print("Number of vowels in the given string:", vowel_count)
