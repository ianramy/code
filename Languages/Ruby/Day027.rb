# Languages - Ruby - Day 27
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that counts how many vowels are in a given string.


require 'set'

# Function to count vowels in a given string using a set for efficient lookup
def count_vowels(input)
  vowels = Set.new(['a', 'e', 'i', 'o', 'u'])
  input.downcase.chars.count { |char| vowels.include?(char) }
end

loop do
  puts "Enter a string to count vowels (or type 'exit' to quit):"
  input = gets.chomp.strip

  if input.downcase == 'exit'
    puts "Exiting program. Goodbye!"
    break
  end

  if input.empty?
    puts "Input cannot be empty. Please enter a valid string."
    next
  end

  vowel_count = count_vowels(input)
  puts "Number of vowels in the given string: #{vowel_count}"
end
