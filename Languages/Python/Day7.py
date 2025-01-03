# Languages - Python - Day 7
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).


def main():
    try:
        num_numbers = int(input("How many numbers would you like to input? "))
        if num_numbers <= 0:
            print("Please enter a positive number of inputs.")
            return

        numbers = []

        for i in range(num_numbers):
            while True:
                try:
                    number = float(input(f"Enter number {i + 1}: "))
                    numbers.append(number)
                    break
                except ValueError:
                    print("Invalid input. Please enter a numeric value.")

        sum_numbers = sum(numbers)

        average = sum_numbers / num_numbers

        print(f"Sum: {sum_numbers}")
        print(f"Average: {average:.2f}")

        if average > 50:
            print("Above average")
        elif average < 50:
            print("Below average")
        else:
            print("Average")
    except ValueError:
        print("Invalid input. Please start again and enter a valid number.")


if __name__ == "__main__":
    main()
