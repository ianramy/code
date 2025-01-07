# Languages - Python - Day 4
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

def factorial(n):
    if n == 0:
        return 1
    return n * factorial(n - 1)


def main():
    try:
        num = int(input("Enter a number to calculate the factorial: "))
        if num < 0:
            print("Factorial is not defined for negative numbers.")
        else:
            print(f"The factorial of {num} is {factorial(num)}.")
    except ValueError:
        print("Invalid input. Please enter an integer.")


if __name__ == "__main__":
    main()
