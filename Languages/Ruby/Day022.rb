# Languages - Ruby - Day 22
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that removes all duplicate characters from a string while preserving the original order.


# Function to remove duplicates from a string while preserving the original order
def remove_duplicates(input)
  return "Input cannot be empty." if input.nil? || input.strip.empty?

  seen = {}
  result = ""
  input.each_char do |char|
    unless seen[char]
      seen[char] = true
      result << char
    end
  end
  result
end

# Get user input and display the result
puts "Enter a string:"
input = gets.chomp

if input.strip.empty?
  puts "Input cannot be empty."
else
  result = remove_duplicates(input)
  puts "String after removing duplicates: #{result}"
end
