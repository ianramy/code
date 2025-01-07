<!-- Languages - PHP - Day 4 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Write a function to calculate the factorial of a number and call this function to print the factorial of a given number.
 -->
<?php

function factorial($n)
{
    if ($n == 0) {
        return 1;
    } else {
        return $n * factorial($n - 1);
    }
}

echo "Enter the number whose factorial you want to calculate: ";
$n = readline();

if (is_numeric($n) && $n >= 0 && (int)$n == $n) {
    $n = (int)$n;
    echo "The factorial of $n is: " . factorial($n) . PHP_EOL;
} else {
    echo "Invalid input. Please enter a non-negative integer." . PHP_EOL;
}

?>
