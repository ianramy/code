// Languages - Java - Day 16
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a function that checks if a number is an Armstrong Number. An Armstrong Number is a number that is equal to the sum of its digits each raised to the power of the number of digits.

import java.util.Scanner;

public class Day016 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Enter a positive integer to check if it's an Armstrong Number: ");
        
        // Input validation
        if (sc.hasNextInt()) {
            int num = sc.nextInt();
            
            if (num < 0) {
                System.out.println("Invalid input. Please enter a positive integer.");
            } else {
                if (isArmstrong(num)) {
                    System.out.println(num + " is an Armstrong Number.");
                } else {
                    System.out.println(num + " is not an Armstrong Number.");
                }
            }
        } else {
            System.out.println("Invalid input. Please enter a valid positive integer.");
        }

        sc.close();
    }

    // Function to check if a number is an Armstrong Number
    static boolean isArmstrong(int num) {
        int temp = num;
        int sum = 0;
        int count = String.valueOf(num).length();

        while (temp > 0) {
            int digit = temp % 10;
            sum += Math.pow(digit, count);
            temp /= 10;
        }
        return sum == num;
    }
}
