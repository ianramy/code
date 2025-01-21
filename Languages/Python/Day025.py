# Languages - Python - Day 25
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that converts a Decimal Number to Binary without using built-in conversion functions.


def decimal_to_binary(number):
    if number == 0:
        return "0"

    num = abs(number)
    binary = ""

    while num > 0:
        binary = str(num % 2) + binary
        num //= 2

    return f"-{binary}" if number < 0 else binary


# Input handling
number = input("Enter a decimal number: ").strip()

if number.lstrip("-").isdigit():
    number = int(number)
    binary = decimal_to_binary(number)
    print("Binary representation:", binary)
else:
    print("Invalid input. Please enter a valid integer.")
