# Languages - Ruby - Day 13
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.

def sum_of_array(arr)
  arr.sum # Ruby's built-in method for summing arrays
end

# Prompt the user for input
puts "Enter the array of numbers separated by commas (e.g., 1,2,3):"

# Read and validate the input
input = gets.chomp
if input.strip.empty?
  puts "Invalid input. Please enter a non-empty list of numbers separated by commas."
  exit
end

# Convert input into an array of integers and handle invalid elements
begin
  arr = input.split(",").map { |num| Integer(num.strip) }
rescue ArgumentError
  puts "Invalid input. Please ensure all elements are valid numbers."
  exit
end

# Call the function and print the result
puts "The sum of the array is: #{sum_of_array(arr)}"
