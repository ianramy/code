# Languages - Python - Day 20
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that sorts an array using the Bubble Sort algorithm.


# Bubble Sort Function
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        swapped = False
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
                swapped = True
        if not swapped:
            break
    return arr


# Function to validate numeric input
def get_valid_number(prompt_message):
    while True:
        try:
            num = int(input(prompt_message))
            return num
        except ValueError:
            print("Invalid input. Please enter a valid integer.")


# Function to collect elements individually
def get_elements():
    n = get_valid_number("Enter the number of elements in the array: ")
    while n <= 0:
        print("Please enter a positive integer.")
        n = get_valid_number("Enter the number of elements in the array: ")
    
    # Initialize array
    arr = []
    
    # Collect elements
    for i in range(n):
        num = get_valid_number(f"Enter element {i + 1}: ")
        arr.append(num)
    return arr


# Main Execution
if __name__ == "__main__":
    # Collect elements with validation
    arr = get_elements()

    # Display original array
    print("\nOriginal array:", arr)

    # Sort the array
    sorted_arr = bubble_sort(arr.copy())

    # Display sorted array
    print("Sorted array:", sorted_arr)
