# Languages - Python - Day 9
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.


def sum_of_numbers(start, end):
    sum = 0
    for i in range(start, end + 1):
        print(i)
        sum += i
    print(f"The sum of the numbers from {start} to {end} is: {sum}")

sum_of_numbers(1, 10)
