<!-- Languages - PHP - Day 21 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that calculates the Greatest Common Divisor (GCD) of two numbers using the Euclidean Algorithm.-->


<?php
// Function to calculate the Greatest Common Divisor (GCD)
function gcd($a, $b) {
    $a = abs($a);
    $b = abs($b);

    if ($a === 0 && $b === 0) {
        return null;
    }

    while ($b != 0) {
        $temp = $b;
        $b = $a % $b;
        $a = $temp;
    }
    return $a;
}

// Function for integer input validation
function getIntegerInput($prompt) {
    echo $prompt;
    $input = trim(fgets(STDIN));
    if (filter_var($input, FILTER_VALIDATE_INT) !== false) {
        return (int)$input;
    } else {
        echo "Invalid input. Please enter a valid integer.\n";
        return null;
    }
}

// Input handling
$num1 = getIntegerInput("Enter the first number:\n");
if ($num1 !== null) {
    $num2 = getIntegerInput("Enter the second number:\n");
    if ($num2 !== null) {
        $result = gcd($num1, $num2);
        if ($result === null) {
            echo "GCD is undefined for inputs 0 and 0.\n";
        } else {
            echo "The GCD of $num1 and $num2 is $result.\n";
        }
    }
}
?>
