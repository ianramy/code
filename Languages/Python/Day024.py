# Languages - Python - Day 24
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that lists all Prime Numbers up to a given number n.


def is_prime(num):
    if num < 2:
        return False
    if num in (2, 3):
        return True
    if num % 2 == 0 or num % 3 == 0:
        return False
    i = 5
    while i * i <= num:
        if num % i == 0 or num % (i + 2) == 0:
            return False
        i += 6
    return True


def list_primes(n):
    return [x for x in range(2, n + 1) if is_prime(x)]


try:
    n = input("Enter a number: ").strip()
    n = int(n)

    if n < 0:
        print("Please enter a non-negative number.")
    else:
        primes = list_primes(n)
        if primes:
            print(f"Prime numbers up to {n}: {', '.join(map(str, primes))}")
        else:
            print(f"No prime numbers found up to {n}.")
except ValueError:
    print("Invalid input. Please enter a valid non-negative integer.")
