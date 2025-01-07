# Languages - Ruby - Day 6
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Write a program that initializes an array of integers, iterates through it, and prints each element.

def print_array_elements(array)
  array.each { |element| puts element }
end

print_array_elements([1, 2, 3, 4, 5])
