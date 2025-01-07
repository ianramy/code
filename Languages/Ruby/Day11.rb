# Languages - Ruby - Day 11
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes two numbers as parameters, calculates their product, and returns the result. Call this function and print the result.

# Function to calculate the product of two numbers
def product(num1, num2)
  num1 * num2
end

# Function to get valid numeric input from the user
def get_valid_number(prompt)
  # Loop until valid input is entered
  loop do
    puts prompt
    input = gets.chomp
    if input.match?(/^\d+$/)
      return input.to_i
    else
      # Display error message if input is not a valid number
      puts "Invalid input. Please enter a valid number."
    end
  end
end

# Get two numbers from the user
num1 = get_valid_number("Enter the first number: ")
num2 = get_valid_number("Enter the second number: ")

# Calculate the product of the two numbers and print the result
puts "The product of the two numbers is: #{product(num1, num2)}"
