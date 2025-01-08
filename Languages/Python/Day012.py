# Languages - Python - Day 12
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

# Function to find the larger of two numbers
def find_larger(num1, num2):
    if num1 > num2:
        return num1
    else:
        return num2


# Function to get a valid number from the user
def get_valid_number(prompt):
    while True:
        try:
            return float(input(prompt))
        except ValueError:
            print("Invalid input. Please enter a valid number.")


# Ask user for two valid numbers
num1 = get_valid_number("Enter the first number: ")
num2 = get_valid_number("Enter the second number: ")

# Call the function and print the result
result = find_larger(num1, num2)
print(f"The larger number is: {result}")
