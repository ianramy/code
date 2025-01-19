# Languages - Python - Day 23
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


# Function to calculate the power of a number using recursion
def power(base, exponent):
    
    if exponent == 0:
        
        return 1
    
    elif exponent < 0:
        
        return 1 / power(base, -exponent)
    
    else:
        
        return base * power(base, exponent - 1)

# Main code
try:
    # Get the base and exponent from the user
    base = float(input("Enter the base number: "))
    
    exponent = int(input("Enter the exponent: "))

    if base == 0 and exponent == 0:
        
        print("0^0 is undefined.")
        
    else:
        result = power(base, exponent)
        
        print(f"{base}^{exponent} = {result}")
        
except ValueError:
    
    print("Invalid input. Please enter numerical values.")
