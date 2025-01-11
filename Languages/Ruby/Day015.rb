# Languages - Ruby - Day 15
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that takes a string as a parameter and checks whether the string is a palindrome (reads the same forwards and backwards). Call this function with a sample string and print whether it is a palindrome.

# Function to check if a string is a palindrome with input validation
def palindrome?(string)
  # Normalize the string: remove non-alphanumeric characters and make lowercase
  normalized = string.gsub(/[^a-zA-Z0-9]/, '').downcase
  return false if normalized.empty?

  normalized == normalized.reverse
end

# Ask the user for a string
puts "Enter a string: "
string = gets.chomp

# Input validation
if string.strip.empty?
  puts "Invalid input. Please enter a non-empty string."
else
  # Check if the string is a palindrome
  if palindrome?(string)
    puts "\"#{string}\" is a palindrome."
  else
    puts "\"#{string}\" is not a palindrome."
  end
end
