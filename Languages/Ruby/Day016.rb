# Languages - Ruby - Day 16
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

# Function to check if a number is an Armstrong Number
def is_armstrong(n)
  return false unless n.is_a?(Integer) && n >= 0

  n == n.to_s.chars.map(&:to_i).map { |x| x ** n.to_s.size }.sum
end

# Function to prompt user input
def prompt_user
  print "Enter a positive integer to check if it's an Armstrong Number: "
  input = gets.chomp

  if input.match?(/^\d+$/)
    number = input.to_i
    if is_armstrong(number)
      puts "#{number} is an Armstrong Number."
    else
      puts "#{number} is not an Armstrong Number."
    end
  else
    puts "Invalid input. Please enter a positive integer."
  end
end

# Run the prompt
prompt_user
