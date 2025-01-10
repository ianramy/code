# Languages - Python - Day 14
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

# Function to reverse a string
def reverse_string(string):
    return string[::-1]


# Function to validate input
def is_valid_input(input_string):
    return bool(input_string.strip())


# Ask the user for input with validation
while True:
    user_input = input("Enter a non-empty string: ")
    if is_valid_input(user_input):
        break
    else:
        print("Invalid input. Please enter a non-empty string.")

# Call the function and print the reversed string
print(f"Reversed string: {reverse_string(user_input)}")
