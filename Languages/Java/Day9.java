// Languages - Java - Day 9
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that uses a loop to print the numbers from 1 to 10 and calculates their sum.

public class Day9 {
    public static void main(String[] args) {
        calculateSumInRange(1, 10);
    }

    public static void calculateSumInRange(int start, int end) {
        int sum = 0;
        for (int i = start; i <= end; i++) {
            System.out.println(i);
            sum += i;
        }
        System.out.println("The sum of the numbers from " + start + " to " + end + " is: " + sum);
    }
}
