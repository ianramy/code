# Languages - Ruby - Day 17
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that generates the Fibonacci sequence up to a given number n.
# The Fibonacci sequence starts with 0 and 1, and each subsequent number is the sum of the previous two numbers.

def fibonacci(n)
  return [] if n < 0
  return [0] if n == 0

  fib = [0, 1]
  while (next_num = fib[-1] + fib[-2]) <= n
    fib << next_num
  end
  fib
end

# Ask the user for a number and print the Fibonacci sequence up to that number.
puts "Enter a positive number:"
input = gets.chomp

if input.match?(/^\d+$/)
  n = input.to_i
  puts "Fibonacci sequence up to #{n}: #{fibonacci(n).join(', ')}"
else
  puts "Invalid input. Please enter a positive integer."
end
