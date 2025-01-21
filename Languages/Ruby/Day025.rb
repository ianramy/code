# Languages - Ruby - Day 25
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that converts a Decimal Number to Binary without using built-in conversion functions.

def decimal_to_binary(number)
  return "0" if number == 0

  num = number.abs
  binary = ""
  while num > 0
    binary = (num % 2).to_s + binary
    num /= 2
  end

  number < 0 ? "-#{binary}" : binary
end

puts "Enter a decimal number:"
input = gets.chomp.strip

if input =~ /^-?\d+$/
  number = input.to_i
  binary = decimal_to_binary(number)
  puts "Binary representation: #{binary}"
else
  puts "Invalid input. Please enter a valid integer."
end
