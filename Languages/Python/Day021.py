# Languages - Python - Day 21
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


def gcd(a, b):
    """
    Calculate the Greatest Common Divisor (GCD) of two integers.
    Returns None if both inputs are zero.
    """
    a, b = abs(a), abs(b)
    if a == 0 and b == 0:
        return None
    while b != 0:
        a, b = b, a % b
    return a


def get_integer(prompt):
    """Prompt the user until a valid integer is entered."""
    while True:
        try:
            return int(input(prompt))
        except ValueError:
            print("Invalid input. Please enter a valid integer.")


def main():
    """Main function to calculate the GCD of two integers."""
    num1 = get_integer("Enter the first integer: ")
    num2 = get_integer("Enter the second integer: ")

    result = gcd(num1, num2)
    if result is None:
        print("GCD is undefined for inputs 0 and 0.")
    else:
        print(f"The GCD of {num1} and {num2} is {result}.")


if __name__ == "__main__":
    main()
