# Languages - Python - Day 17
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that generates the Fibonacci sequence up to a given number n.
# The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.


def fibonacci(n):
    if n < 0:
        return "Please enter a positive integer."
    elif n == 0:
        return [0]

    fib = [0, 1]
    while fib[-1] + fib[-2] <= n:
        fib.append(fib[-1] + fib[-2])
    return fib


# Ask the user for a number and print the Fibonacci sequence up to that number.
try:
    n = int(input("Enter a positive integer: "))
    result = fibonacci(n)
    print(f"Fibonacci sequence up to {n}: {result}")
except ValueError:
    print("Invalid input. Please enter a positive integer.")
