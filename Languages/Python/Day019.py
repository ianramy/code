# Languages - Python - Day 19
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


# Function to check if a number is a Perfect Number
def is_perfect_number(num):
    if num <= 0:
        return False  # Perfect numbers must be positive integers

    sum_of_divisors = 0
    # Loop only up to num // 2 for efficiency
    for i in range(1, (num // 2) + 1):
        if num % i == 0:
            sum_of_divisors += i

    return sum_of_divisors == num


# Function to validate user input
def get_valid_input():
    try:
        num = int(input("Enter a positive integer to check if it's a Perfect Number: "))
        if num > 0:
            return num
        else:
            print("⚠️ Please enter a positive integer.")
            return None
    except ValueError:
        print("⚠️ Invalid input. Please enter a valid integer.")
        return None


# Main execution
num = get_valid_input()

if num:
    if is_perfect_number(num):
        print(f"🎉 {num} is a Perfect Number!")
    else:
        print(f"❌ {num} is not a Perfect Number.")
