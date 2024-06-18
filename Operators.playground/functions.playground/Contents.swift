import Foundation

// Function with no arguments and no return value
func noArgumentsAndReturnValue() {
    "Hello World"  // This line doesn't do anything as the string is not returned or printed
}
noArgumentsAndReturnValue()

// Function that takes an integer argument and adds 2 to it
func plusTwo(value: Int) {
    let newValue = value + 2  // The newValue is calculated but not used or returned
}
plusTwo(value: 30)

// Function that takes an integer argument, adds 2 to it, and returns the result
func newPlusTwo(value: Int) -> Int {
    value + 2  // The result is returned directly
}
newPlusTwo(value: 20)

// Function that takes two integer arguments and returns their sum
func customAdd(value1: Int, value2: Int) -> Int {
    value1 + value2  // The sum of the two values is returned
}

let customAdded = customAdd(value1: 30, value2: 20)  // Calls customAdd and stores the result in customAdded

// Function that takes two integer arguments and returns their difference
func customeMinus(_ lhs: Int, _ rhs: Int) -> Int {
    lhs - rhs  // The difference of lhs and rhs is returned
}

let customSubtracted = customeMinus(30, 20)  // Calls customeMinus and stores the result in customSubtracted

// Function that takes two integer arguments and returns their sum, with discardable result annotation
@discardableResult
func myCustomAdd(_ lhs: Int, _ rhs: Int) -> Int {
    lhs + rhs  // The sum of lhs and rhs is returned
}

myCustomAdd(20, 3434)  // Calls myCustomAdd but doesn't store the result

// Function that performs a more complicated operation with a nested function
func doSomthingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2  // Adds 2 to the input value
    }
    return mainLogic(value: value + 3)  // Calls mainLogic with value + 3
}

doSomthingComplicated(with: 20)  // Calls doSomthingComplicated with 20

// Function that returns a full name, with default values for the parameters
func getFullName(firstName: String = "Ali", lastName: String = "Hassan") -> String {
    "\(firstName) \(lastName)"  // Constructs a full name string and returns it
}

getFullName()  // Calls getFullName with default values
getFullName(firstName: "Raees")  // Calls getFullName with a custom first name
getFullName(lastName: "Raees")  // Calls getFullName with a custom last name
getFullName(firstName: "Muhammad", lastName: "Athar")  // Calls getFullName with custom first and last names
