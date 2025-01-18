<!-- Languages - PHP - Day 22 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that removes all duplicate characters from a string while preserving the original order.-->


<?php

// Function to remove duplicate characters while preserving order
function removeDuplicates($input) {
    if (empty(trim($input))) {
        return "Input cannot be empty.";
    }
    $seen = [];
    $result = '';
    for ($i = 0; $i < strlen($input); $i++) {
        $char = $input[$i];
        if (!isset($seen[$char])) {
            $seen[$char] = true;
            $result .= $char;
        }
    }
    return $result;
}

// Get user input and display the result
echo "Enter a string:\n";
$input = trim(fgets(STDIN));

if (empty($input)) {
    echo "Input cannot be empty.\n";
    exit;
}

$result = removeDuplicates($input);
echo "String after removing duplicates: $result\n";

?>
