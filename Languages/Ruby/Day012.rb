# Languages - Ruby - Day 12
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.

# Function to find the larger of two numbers
def larger_number(num1, num2)
  if num1 > num2
    return num1
  else
    return num2
  end
end

# Function to get a valid integer input from the user
def get_valid_number(prompt)
  loop do
    puts prompt
    input = gets.chomp
    if input.match?(/^[-+]?\d+$/)
      return input.to_i
    else
      puts "Invalid input. Please enter a valid integer."
    end
  end
end

# Get two valid numbers from the user
number1 = get_valid_number("Enter the first number:")
number2 = get_valid_number("Enter the second number:")

# Call the function and print the result
result = larger_number(number1, number2)
puts "The larger number is: #{result}"
