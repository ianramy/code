# Languages - Ruby - Day 20
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that sorts an array using the Bubble Sort algorithm.


# Bubble Sort Function
def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false
    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

# Function to validate numeric input
def get_valid_number(prompt)
  loop do
    print prompt
    input = gets.chomp
    return input.to_i if input.match?(/^[-+]?\d+$/)
    puts "Invalid input. Please enter a valid integer."
  end
end

# Function to collect elements individually
def get_elements
  n = get_valid_number("Enter the number of elements in the array: ")
  while n <= 0
    puts "Please enter a positive integer."
    n = get_valid_number("Enter the number of elements in the array: ")
  end

  arr = []
  n.times do |i|
    arr << get_valid_number("Enter element #{i + 1}: ")
  end
  arr
end

# Collect array elements with validation
arr = get_elements

# Display original array
puts "\nOriginal array: #{arr.join(' ')}"

# Sort the array
sorted_arr = bubble_sort(arr.clone)

# Display sorted array
puts "Sorted array: #{sorted_arr.join(' ')}"
