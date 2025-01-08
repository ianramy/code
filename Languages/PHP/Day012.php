<!-- Languages - PHP - Day 12 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that takes two numbers as parameters and returns the larger of the two. Call this function and print the result.-->

<?php
// Function to find the larger of two numbers
function findLarger($num1, $num2) {
    if ($num1 > $num2) {
        return $num1;
    } else {
        return $num2;
    }
}

// Function to get a valid number from the user
function getValidNumber($prompt) {
    while (true) {
        echo $prompt;
        $input = trim(fgets(STDIN));
        if (is_numeric($input)) {
            return $input + 0;
        } else {
            echo "Invalid input. Please enter a valid number.\n";
        }
    }
}

// Ask the user for two valid numbers
$firstNumber = getValidNumber("Enter the first number: ");
$secondNumber = getValidNumber("Enter the second number: ");

// Call the function and print the result
$largerNumber = findLarger($firstNumber, $secondNumber);
echo "The larger number is: " . $largerNumber . "\n";
?>
