<!-- Languages - PHP - Day 19 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that checks if a given number is a Perfect Number. A Perfect Number is a positive integer that is equal to the sum of its proper divisors(excluding itself).-->


<?php
// Function to check if a number is a Perfect Number
function isPerfectNumber($number) {
    if ($number <= 0 || !is_int($number)) {
        return false;  // Perfect numbers must be positive integers
    }

    $sum = 0;
    // Loop only up to half of the number for efficiency
    for ($i = 1; $i <= $number / 2; $i++) {
        if ($number % $i == 0) {
            $sum += $i;
        }
    }

    return $sum == $number;
}

// Function to validate user input
function getValidInput() {
    $input = readline("Enter a positive integer to check if it's a Perfect Number: ");
    if (is_numeric($input) && intval($input) > 0) {
        return intval($input);
    } else {
        echo "⚠️ Invalid input. Please enter a positive integer.\n";
        return null;
    }
}

// Main execution
$number = getValidInput();

if ($number !== null) {
    if (isPerfectNumber($number)) {
        echo "🎉 $number is a Perfect Number!\n";
    } else {
        echo "❌ $number is not a Perfect Number.\n";
    }
}
?>
