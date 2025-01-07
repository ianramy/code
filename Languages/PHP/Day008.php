<!-- Languages - PHP - Day 8 -->
<!-- Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables. -->

<!-- Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.-->

<?php
function greeting($first, $last) {
    $full_name = $first . " " . $last;
    $first_initial = strtoupper(substr($first, 0, 1));
    $last_initial = strtoupper(substr($last, 0, 1));
    return "Hello, " . $full_name . "! Your initials are " . $first_initial . "." . $last_initial . ".";
}

echo "Please enter your first name: ";
$first_name = trim(fgets(STDIN));

if (empty($first_name)) {
    echo "First name cannot be empty.\n";
    exit;
}

echo "Please enter your last name: ";
$last_name = trim(fgets(STDIN));

if (empty($last_name)) {
    echo "Last name cannot be empty.\n";
    exit;
}

echo greeting($first_name, $last_name) . "\n";
?>
