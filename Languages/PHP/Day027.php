<!-- Languages - PHP - Day 27 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a function that counts how many vowels are in a given string.-->


<?php
// Function to count vowels in a given string using associative array for faster lookup
function count_vowels($input) {
    $vowels = array_flip(str_split('aeiou'));
    $count = 0;
    $input = strtolower($input);

    for ($i = 0; $i < strlen($input); $i++) {
        if (isset($vowels[$input[$i]])) {
            $count++;
        }
    }
    return $count;
}

while (true) {
    echo "Enter a string to count vowels (or type 'exit' to quit): ";
    $input = trim(fgets(STDIN));

    if (strtolower($input) === 'exit') {
        echo "Exiting program. Goodbye!\n";
        break;
    }

    if (empty($input)) {
        echo "Input cannot be empty. Please enter a valid string.\n";
        continue;
    }

    $vowel_count = count_vowels($input);
    echo "Number of vowels in the given string: $vowel_count\n";
}
?>
