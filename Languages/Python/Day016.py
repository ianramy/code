# Languages - Python - Day 16
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

# function to check if a number is an Armstrong Number
def is_armstrong_number(n):
    if not isinstance(n, int) or n < 0:
        print("Please enter a positive integer.")
        return False

    num_str = str(n)
    num_digits = len(num_str)
    total = sum(int(digit) ** num_digits for digit in num_str)

    return total == n

# function to prompt the user for input
def prompt_user():
    try:
        user_input = input(
            "Enter a positive integer to check if it's an Armstrong Number: "
        )
        num = int(user_input)

        if num < 0:
            print("Invalid input. Please enter a positive integer.")
            return

        if is_armstrong_number(num):
            print(f"{num} is an Armstrong Number.")
        else:
            print(f"{num} is not an Armstrong Number.")

    except ValueError:
        print("Invalid input. Please enter a positive integer.")


# Run the prompt
prompt_user()
