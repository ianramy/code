# Languages - Ruby - Day 7
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that asks for several numbers from the user, stores them in an array, computes the sum and average, and prints the results along with a conditional message that evaluates the average (e.g., "Above average", "Below average", etc.).

def average(numbers)
  return 0 if numbers.empty?
  numbers.sum / numbers.length.to_f
end

def above_or_below_avg(avg)
  if avg > 50
    "Above average"
  elsif avg < 50
    "Below average"
  else
    "Average"
  end
end

def main
  numbers = []
  puts "Enter a number or type 'done' to finish:"

  loop do
    input = gets.chomp
    if input.downcase == "done"
      break
    elsif input.match?(/^\d+$/)
      numbers.push(input.to_i)
    else
      puts "Invalid input. Please enter a valid number or 'done'."
    end
  end

  if numbers.empty?
    puts "No numbers were entered."
  else
    avg = average(numbers)
    puts "The sum is #{numbers.sum}"
    puts "The average is #{avg.round(2)}"
    puts above_or_below_avg(avg)
  end
end

main
