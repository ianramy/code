# Languages - Python - Day 26
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that determines if a given number is a Happy Number. 


def is_happy_number(num):
    seen = set()
    while num != 1 and num not in seen:
        seen.add(num)
        num = sum_of_squares(num)
    return num == 1


def sum_of_squares(num):
    sum_result = 0
    while num > 0:
        digit = num % 10
        sum_result += digit**2
        num //= 10
    return sum_result


def main():
    while True:
        num_input = input("Enter a number (or 'q' to quit): ").strip()

        if num_input.lower() == "q":
            print("Exiting program. Goodbye!")
            break

        try:
            num = int(num_input)
            if num < 0:
                print("Negative numbers are not considered Happy Numbers.")
            else:
                result = is_happy_number(num)
                print(
                    f"The number {num} is {'a Happy Number' if result else 'not a Happy Number'}."
                )
        except ValueError:
            print("Invalid input. Please enter an integer.")


if __name__ == "__main__":
    main()
