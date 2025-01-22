# Languages - Ruby - Day 26
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that determines if a given number is a Happy Number. 


require 'set'

def is_happy_number(num)
  seen = Set.new
  until num == 1 || seen.include?(num)
    seen.add(num)
    num = sum_of_squares(num)
  end
  num == 1
end

def sum_of_squares(num)
  num.digits.sum { |digit| digit**2 }
end

puts "Enter a number: "
input = gets.chomp

num = Integer(input, exception: false)

if num.nil?
  puts "Invalid input. Please enter an integer."
elsif num < 0
  puts "Negative numbers are not considered Happy Numbers."
else
  result = is_happy_number(num)
  puts "The number #{num} is #{result ? 'a Happy Number' : 'not a Happy Number'}."
end
