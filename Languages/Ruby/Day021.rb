# Languages - Ruby - Day 21
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.


def gcd(a, b)
  # Absolute values of a and b
  a = a.abs
  b = b.abs
  return 0 if a == 0 && b == 0
  
  while b != 0
    a, b = b, a % b
  end
  a
end

# Input validation and interactive output
puts "Enter the first number:"
input1 = gets.chomp
if input1 =~ /^-?\d+$/
  num1 = input1.to_i
  puts "Enter the second number:"
  input2 = gets.chomp
  if input2 =~ /^-?\d+$/
    num2 = input2.to_i
    result = gcd(num1, num2)
    if result == 0
      puts "GCD is undefined for inputs 0 and 0."
    else
      puts "The GCD of #{num1} and #{num2} is #{result}."
    end
  else
    # Error message for invalid input
    puts "Invalid input. Please enter a valid integer."
  end
else
  puts "Invalid input. Please enter a valid integer."
end
