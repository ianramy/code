<!-- Languages - PHP - Day 20 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that sorts an array using the Bubble Sort algorithm. -->


<?php

// Bubble Sort function
function bubbleSort($arr) {
    $n = count($arr);
    for ($i = 0; $i < $n - 1; $i++) {
        $swapped = false;
        for ($j = 0; $j < $n - $i - 1; $j++) {
            if ($arr[$j] > $arr[$j + 1]) {
                $temp = $arr[$j];
                $arr[$j] = $arr[$j + 1];
                $arr[$j + 1] = $temp;
                $swapped = true;
            }
        }
        if (!$swapped) break;
    }
    return $arr;
}

// Function to validate user input
function validateInput($numbers) {
    foreach ($numbers as $num) {
        if (!is_numeric(trim($num))) {
            return false;
        }
    }
    return true;
}

// Ask for user input
$numbers = readline("Enter numbers separated by commas: ");
$numbers = explode(",", $numbers);

// Validate user input
if (!validateInput($numbers)) {
    echo "Invalid input. Please enter only numbers separated by commas.\n";
    exit();
}

// Convert strings to integers
$numbers = array_map('intval', $numbers);

// Display original array
echo "Original array: ";
echo implode(" ", $numbers) . "\n";

// Sort the array
$sorted = bubbleSort($numbers);

// Print the sorted array
echo "Sorted array: ";
echo implode(" ", $sorted) . "\n";

?>
