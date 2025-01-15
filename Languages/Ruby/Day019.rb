# Languages - Ruby - Day 19
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).


# Function to check if a number is a Perfect Number
def perfect_number?(num)
  return false if num <= 0  # Perfect numbers must be positive integers

  sum = 0
  (1..num / 2).each do |i|  # Optimize: Check up to num / 2
    sum += i if num % i == 0
  end
  sum == num
end

# Function to validate user input
def get_valid_input
  puts "Enter a positive integer to check if it's a Perfect Number:"
  input = gets.chomp

  if input.match?(/^\d+$/) && input.to_i > 0
    input.to_i
  else
    puts "⚠️ Invalid input. Please enter a positive integer."
    nil
  end
end

# Main execution
num = get_valid_input
if num
  if perfect_number?(num)
    puts "🎉 #{num} is a Perfect Number!"
  else
    puts "❌ #{num} is not a Perfect Number."
  end
end
