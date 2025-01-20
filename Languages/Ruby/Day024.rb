# Languages - Ruby - Day 24
# Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

# Create a function that lists all Prime Numbers up to a given number n.


def is_prime(num)
  return false if num <= 1
  return true if num == 2 || num == 3
  return false if num % 2 == 0 || num % 3 == 0

  i = 5
  while i * i <= num
    return false if num % i == 0 || num % (i + 2) == 0
    i += 6
  end
  true
end

def list_primes(n)
  (2..n).select { |num| is_prime(num) }
end

puts "Enter a number:"
input = gets.chomp.strip

if input.match?(/^\d+$/)
  n = input.to_i
  primes = list_primes(n)
  puts primes.empty? ? "No prime numbers found up to #{n}." : "Prime numbers up to #{n}: #{primes.join(', ')}"
else
  puts "Invalid input. Please enter a valid non-negative integer."
end
