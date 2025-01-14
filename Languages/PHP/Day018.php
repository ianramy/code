<!-- Languages - PHP - Day 18 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that counts how many times each character appears in a string. The function should handle both uppercase and lowercase letters (case-insensitive) and ignore spaces.-->

<?php
// Function to count only alphabetic characters
function count_chars_filtered($str) {
    $str = strtolower($str);
    $filteredStr = preg_replace('/[^a-z]/', '', $str); // Keep only alphabetic characters
    $arr = str_split($filteredStr);
    return array_count_values($arr);
}

// Ask for user input
echo "Enter a string: ";
$str = trim(readline());

// Input validation
if (empty($str)) {
    echo "Error: Input cannot be empty.\n";
    exit;
}

// Call the function
$result = count_chars_filtered($str);

// Display the result
if (empty($result)) {
    echo "No alphabetic characters found in the input.\n";
} else {
    echo "\nCharacter occurrence in the input string:\n";
    foreach ($result as $key => $value) {
        echo "'$key': $value\n";
    }
}
?>
