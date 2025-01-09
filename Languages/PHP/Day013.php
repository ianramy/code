<!-- Languages - PHP - Day 13 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that takes an array of numbers, calculates the sum of all elements, and returns the result. Call this function with a sample array and print the result.-->

<?php
function sum($arr) {
    $sum = 0;
    foreach ($arr as $num) {
        $sum += $num;
    }
    return $sum;
}

// Prompt the user for the number of elements
echo "Enter the number of elements in the array: ";
$n = (int)readline();

if ($n <= 0) {
    echo "Please enter a positive integer for the number of elements.\n";
    exit();
}

// Initialize an empty array
$arr = array();

// Prompt the user for the array elements
for ($i = 0; $i < $n; $i++) {
    echo "Enter element " . ($i + 1) . ": ";
    $input = readline();

    // Validate input to ensure it is an integer
    if (!is_numeric($input)) {
        echo "Invalid input. Please enter an integer.\n";
        $i--;
        continue;
    }

    // Add the validated element to the array
    $arr[] = (int)$input;
}

// Call the function and display the result
$result = sum($arr);
echo "The sum of the elements of the array is: " . $result . "\n";
?>
