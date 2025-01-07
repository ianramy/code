// Languages - Kotlin - Day 8
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

fun main() {
    print("Enter your first name: ")
    val firstName = readLine()?.trim() ?: ""

    if (firstName.isEmpty()) {
        println("First name cannot be empty.")
        return
    }

    print("Enter your last name: ")
    val lastName = readLine()?.trim() ?: ""

    if (lastName.isEmpty()) {
        println("Last name cannot be empty.")
        return
    }

    val fullName = "$firstName $lastName"

    val firstInitial = firstName[0].uppercaseChar()
    val lastInitial = lastName[0].uppercaseChar()

    val greetingMessage = "Hello, $fullName! Your initials are $firstInitial.$lastInitial."
    println(greetingMessage)
}
