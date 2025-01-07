# Languages - Ruby - Day 4
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n - 1)
  end
end

puts "Enter a number to calculate its factorial:"
input = gets.chomp

if input.match?(/^\d+$/)
  number = input.to_i
  puts "The factorial of #{number} is #{factorial(number)}."
else
  puts "Invalid input. Please enter a non-negative integer."
end
