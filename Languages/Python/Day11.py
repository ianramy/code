# Languages - Python - Day 11
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.


def product(a, b):
    return a * b

# Function that takes a prompt & returns a valid integer.
def get_valid_number(prompt):
    # Loop until the user enters a valid integer
    while True:
        try:
            return int(input(prompt))
        except ValueError:
            # If the user enters an invalid input, prompt to enter a valid one.
            print("Invalid input. Please enter a valid integer.")


# Get two numbers from the user and display the product
a = get_valid_number("Enter the first number: ")
b = get_valid_number("Enter the second number: ")
print("The product of the two numbers is:", product(a, b))
