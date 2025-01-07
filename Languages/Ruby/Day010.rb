# Languages - Ruby - Day 10
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.

def prompt_for_positive_number
  input = nil

  loop do
    print "Please enter a positive number: "
    input = gets.chomp

    if input.match?(/^\d+$/)
      number = input.to_i
      if number > 0
        return number
      else
        puts "The number is not positive. Try again."
      end
    else
      puts "Invalid input. Please enter a valid positive number."
    end
  end
end

positive_number = prompt_for_positive_number
puts "You entered: #{positive_number}"
