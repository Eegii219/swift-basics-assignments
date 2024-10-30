//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Very Important topic for interview


//1. Basic Closure
let sum: (Int, Int) -> Int = { x, y in
    return x + y
}
print(sum(1, 2))

//2. Closure with No Parameters
let greet: () -> Void = {
    print("Hello World")
}
greet()

//3. Closure with Implicit Return
let multiply: (Int, Int) -> Int = { x, y in
    return x * y
}

print(multiply(1, 2))

//4. Closure as a Function Parameter
func operationOnNumber(_ x: Int, _ y: Int, closure: (Int, Int) -> Int) -> Int {
    return closure(x, y)
}

var resultOperation = operationOnNumber(10, 5) { ( x, y) in
    return x * y
}

print( resultOperation)

//5. Trainling Closure Syntax
func printName(_ name: String, closure: () -> Void) {
    print("Hello my name is :")
    closure()
    print("Bye")
}



