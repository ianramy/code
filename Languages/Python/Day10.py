# Languages - Python - Day 10
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

def main():
    while True:
        try:
            number = int(input("Please enter a positive number: "))

            if number > 0:
                print(f"You entered: {number}")
                break
            else:
                print("Invalid input. The number must be positive. Please try again.")
        except ValueError:
            print("Invalid input. Please enter a valid numeric value.")


if __name__ == "__main__":
    main()
