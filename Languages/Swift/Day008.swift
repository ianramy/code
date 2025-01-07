// Languages - Swift - Day 8
// Foundational Concepts: Basics, syntax, loops, conditionals, functions, and variables.

// Create a program that takes a "user's" first and last name as input, concatenates them into a full name, slices the full name to extract specific characters, and formats the result in a greeting message.

func greetUser(firstName: String, lastName: String) -> String {
    let fullName = firstName + " " + lastName
    let greeting = "Hello, \(fullName)!"
    let firstInitial = firstName.prefix(1).uppercased()
    let lastInitial = lastName.prefix(1).uppercased()
    let initials = "\(firstInitial). \(lastInitial)."
    let formattedGreeting = "\(greeting) Your initials are \(initials)"
    return formattedGreeting
}

func sanitizeInput(_ input: String?) -> String? {
    guard let trimmedInput = input?.trimmingCharacters(in: .whitespacesAndNewlines), !trimmedInput.isEmpty else {
        return nil
    }
    return trimmedInput
}

print("Enter your first name: ", terminator: "")
if let firstName = sanitizeInput(readLine()) {
    print("Enter your last name: ", terminator: "")
    if let lastName = sanitizeInput(readLine()) {
        let greeting = greetUser(firstName: firstName, lastName: lastName)
        print(greeting)
    } else {
        print("Invalid input for last name. Please enter a non-empty value.")
    }
} else {
    print("Invalid input for first name. Please enter a non-empty value.")
}
