# Languages - Python - Day 13
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

# Function to calculate the sum of all elements in an array
def sum_of_elements(arr):
    return sum(arr)


# Prompt the user to input the array of numbers
user_input = input("Enter the array of numbers separated by commas (e.g., 1,2,3): ")

# Validate the input
if not user_input.strip():
    print("Invalid input. Please enter at least one number.")
else:
    try:
        # Convert the input string into a list of integers
        arr = list(map(int, user_input.split(",")))

        # Calculate and print the sum
        print("The sum of all elements in the array is:", sum_of_elements(arr))
    except ValueError:
        print("Invalid input. Please enter only numbers separated by commas.")
