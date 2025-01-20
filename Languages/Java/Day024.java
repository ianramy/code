// Languages - Java - Day 24
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that lists all Prime Numbers up to a given number n.


import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Day024 {
    
    public static boolean isPrime(int num) {
        if (num < 2) return false;
        if (num == 2 || num == 3) return true;
        if (num % 2 == 0 || num % 3 == 0) return false;
        for (int i = 5; i * i <= num; i += 6) {
            if (num % i == 0 || num % (i + 2) == 0) return false;
        }
        return true;
    }

    public static List<Integer> listPrimes(int n) {
        if (n < 2) {
            return new ArrayList<>();
        }
        List<Integer> primes = new ArrayList<>();
        for (int i = 2; i <= n; i++) {
            if (isPrime(i)) {
                primes.add(i);
            }
        }
        return primes;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number: ");
        
        if (scanner.hasNextInt()) {
            int n = scanner.nextInt();
            
            if (n < 0) {
                System.out.println("Please enter a non-negative number.");
            } else {
                List<Integer> primes = listPrimes(n);
                if (primes.isEmpty()) {
                    System.out.println("No prime numbers found up to " + n + ".");
                } else {
                    System.out.println("Prime numbers up to " + n + ": " + primes);
                }
            }
        } else {
            System.out.println("Invalid input. Please enter a valid non-negative integer.");
        }
        scanner.close();
    }
}
