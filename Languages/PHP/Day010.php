<!-- Languages - PHP - Day 10 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a program that repeatedly prompts the user to enter a positive number. If the user enters a non-positive number, prompt them again until a valid positive number is provided. When a valid input is received, print the number.-->

<?php
function getPositiveNumber() {
    $number = 0;

    while (true) {
        echo "Enter a positive number: ";
        $input = readline();

        if (!is_numeric($input)) {
            echo "Invalid input. Please enter a numeric value.\n";
            continue;
        }

        $number = (float)$input;

        if ($number > 0) {
            break;
        } else {
            echo "The number must be positive. Please try again.\n";
        }
    }

    return $number;
}

$number = getPositiveNumber();
echo "You entered: $number\n";
?>
