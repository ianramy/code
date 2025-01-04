# Languages - Ruby - Day 8
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

puts "Please enter your first name: "
first_name = gets.chomp.strip

if first_name.empty?
  puts "First name cannot be empty."
  exit
end

puts "Please enter your last name: "
last_name = gets.chomp.strip

if last_name.empty?
  puts "Last name cannot be empty."
  exit
end

full_name = "#{first_name} #{last_name}"

first_initial = first_name[0].upcase
last_initial = last_name[0].upcase

puts "Hello, #{full_name}! Your initials are #{first_initial}.#{last_initial}."
