import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge {
    "I am older than you"
} else if myAge < yourAge {
    "I am younger than you"
} else{
    "Oh hey, We are same age"
}


let motherAge = myAge + 30

let doubleAge = myAge * 2
// 1. unary prefix
let foo = !true
// 2. unary postfix
let name  = Optional("Ali Hassan")
print(type(of: name))
let unaryPostfix = name!

print(type(of: unaryPostfix))
// 3. binary infix
let result = 2313 + 2368374

let names = "ALI" + " " + "HASSAN"
// turnary operator
let age = 18
let message: String
message = age >= 18 ? "You are an adult" : "You are not yet adult";



