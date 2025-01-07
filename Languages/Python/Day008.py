# Languages - Python - Day 8
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

def greet_user():
    first_name = input("Enter your first name: ").strip()
    if not first_name:
        print("First name cannot be empty.")
        return

    last_name = input("Enter your last name: ").strip()
    if not last_name:
        print("Last name cannot be empty.")
        return
    
    full_name = f"{first_name} {last_name}"

    first_initial = first_name[0].upper()
    last_initial = last_name[0].upper()

    print(f"Hello {full_name}! Your initials are {first_initial}.{last_initial}.")


greet_user()
