import Foundation  // Import the Foundation framework, which provides basic classes and functionalities

// This is a basic function to add two integers.
// func add(_ lhs: Int, _ rhs:Int)->Int {
//    return lhs + rhs;
// }
//
// The `print` function outputs the result of the `add` function to the console.
// print(add(20, 355))

// Define a constant `add` which is a closure (anonymous function) that takes two integers and returns their sum
let add: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in  // Parameters lhs and rhs, both of type Int
    lhs + rhs  // Return the sum of lhs and rhs
}

// Call the closure with 222 and 868 as arguments
add(222, 868)
 
// Define a function `customAdd` that takes two integers and a function as arguments, then uses the function to add the integers
func customAdd(_ lhs: Int, _ rhs: Int, using function: (Int, Int) -> Int) -> Int {
    function(lhs, rhs)  // Call the function with lhs and rhs as arguments
}

// Call `customAdd` with 50, 70, and a closure that adds two integers
customAdd(50, 70, using: { (lhs: Int, rhs: Int) -> Int in
    lhs + rhs  // Return the sum of lhs and rhs
})

// Call `customAdd` with 50, 7760, and a shorter closure (type inference allows us to omit types)
customAdd(50, 7760) { (lhs, rhs) in
    lhs + rhs  // Return the sum of lhs and rhs
}

// Call `customAdd` with 50, 5650, and an even shorter closure using shorthand argument names
customAdd(50, 5650) { $0 + $1 }  // $0 is the first parameter, $1 is the second

let ages = [23,14,34,22,25,56]

// ascending order
ages.sorted(by: <)
// descending order
ages.sorted(by: >)

ages.sorted(by: {
    (lhs: Int, rhs: Int)-> Bool in
    lhs < rhs
})

func add10(value: Int)->Int {
    value + 10
}

func doAddition(
    on value: Int,
    using function: (Int)->Int
)-> Int {
    function(value)
}


doAddition(on: 20) { (value) in
    value + 30
}

doAddition(on: 75, using: add10(value:))
