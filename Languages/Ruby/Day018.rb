# Languages - Ruby - Day 18
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.

# Function to count only alphabetic characters
def char_count(txt)
  txt = txt.downcase.gsub(/[^a-z]/, "")
  txt.each_char.inject(Hash.new(0)) { |h, c| h[c] += 1; h }
end

# Ask the user for a string
puts "Enter a string:"
txt = gets.chomp.strip

# Input validation
if txt.empty?
  puts "Error: Input cannot be empty."
else
  result = char_count(txt)
  
  if result.empty?
    puts "No alphabetic characters found in the input."
  else
    puts "\nCharacter occurrence in the input string:"
    result.sort.each { |char, count| puts "'#{char}': #{count}" }
  end
end
