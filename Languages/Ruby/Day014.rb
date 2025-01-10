# Languages - Ruby - Day 14
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes a string as a parameter, reverses the string, and returns the result. Call this function with a sample string and print the reversed string.

# Function to reverse a string
def reverse_string(string)
  string.reverse
end

# Function to validate input
def valid_input?(input)
  !input.strip.empty?
end

# Ask the user for a string with validation
input_string = ""
loop do
  puts "Please enter a non-empty string to reverse: "
  input_string = gets.chomp

  if valid_input?(input_string)
    break
  else
    puts "Invalid input. Please enter a non-empty string."
  end
end

# Call the function and print the reversed string
puts "The reversed string is: #{reverse_string(input_string)}"
