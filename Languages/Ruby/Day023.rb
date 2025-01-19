# Languages - Ruby - Day 23
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a recursive function that computes the Power of a number (x^n) without using built-in power functions.


# Function to calculate the power of a number using recursion
def power(base, exponent)
  return 1 if exponent == 0
  return 1.0 / power(base, -exponent) if exponent < 0
  base * power(base, exponent - 1)
end

# Main code
puts "Enter the base number:"
base = gets.chomp.strip
if base.match?(/^-?\d+(\.\d+)?$/)
  base = base.to_f
  puts "Enter the exponent:"
  exponent = gets.chomp.strip
  if exponent.match?(/^-?\d+$/)
    exponent = exponent.to_i
    result = power(base, exponent)
    # Display the result
    puts "#{base}^#{exponent} = #{result}"
  else
    puts "Invalid input for exponent."
  end
else
  puts "Invalid input for base."
end
