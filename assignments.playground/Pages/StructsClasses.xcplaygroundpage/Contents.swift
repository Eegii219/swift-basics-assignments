//: [Previous](@previous)

import Foundation

// =============== Conditional Statements ===========

//if: Executes code only if a specified condition is true.

let age = 18
if age >= 18 {
    print("You are an adult.")
}else{
    print("You are a minor.")

}

//switch: Provides an alternative to lengthy if-else chains.
//Useful when you have multiple possible values to check.

let score = 85

switch score {
case 90...100:
    print("Excellent")
case 70..<90:
    print("Good")
default:
    print("Needs Improvement")
}

//Looping Statements
//for-in: Iterates over items in a sequence.

let fruits = ["Apple", "Banana", "Cherry"]

for fruit in fruits {
    print(fruit)
}

//while: Repeats code as long as a condition is true.
var count = 5
while count > 0 {
    print("Count is \(count)")
    count -= 1
}

//repeat-while: Similar to while, but it executes the loop at least once.

var count1 = 5
repeat {
    print("Count is \(count)")
    count1 -= 1
} while count1 > 0

/*

Functions in Swift
Functions are reusable blocks of code. They allow you to define code once and use it multiple times.
Declaring a function in Swift starts with the func keyword,
followed by the function nameparameters,and return type.
*/

//1. Function Declaration

func greet(name: String) -> String {
    return "Hello, \(name)!"
}

//2. Function Body
//The body contains the statements the function executes when called.

func add(a: Int, b: Int) -> Int {
    let sum = a + b
    return sum
}

//3. Calling a Function
//To call a function, use its name followed by arguments in parentheses.

let message = greet(name: "Alice")
print(message) // Output: Hello, Alice!

//====================== Types of Functions=============================================

//Functions with Parameters and Return Values
func multiply(a: Int, b: Int) -> Int {
    return a * b
}

let result = multiply(a: 3, b: 4)

//Functions with No Parameters
func sayHello() -> String {
    return "Hello!"
}

print(sayHello())

//Functions with No Return Value
//By default, these functions return Void, which can be omitted.

func displayMessage() {
    print("This is a message")
}

//Functions with Multiple Return Values
//You can use a tuple to return multiple values.
func getUserInfo() -> (name: String, age: Int) {
    return ("Alice", 25)
}

let userInfo = getUserInfo()
print("Name: \(userInfo.name), Age: \(userInfo.age)")

//Functions with Default Parameter Values
func greetPerson(name: String = "Guest") {
    print("Hello, \(name)")
}

greetPerson() // Output: Hello, Guest

greetPerson(name: "Bob") // Output: Hello, Bob

//Variadic Functions
//Accepts zero or more values as input for a parameter.

func sum(numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}

print(sum(numbers: 1, 2, 3, 4)) // Output: 10

//Nested Functions
//You can define functions within other functions.
func outerFunction() {
    func innerFunction() {
        print("Inner function called")
}
    innerFunction()

}

//Function Types
//Functions can be assigned to variables or used as parameters/return values for other functions.
func adding(a: Int, b: Int) -> Int {
    return a + b
}

let operation: (Int, Int) -> Int = adding
print(operation(2, 3)) // Output: 5

//========================================= OOP ======================

// CLASS :PARENT CLASS

class Vehicle {

    var speed = 0

    func description() -> String {
        return "Vehicle moving at \(speed) km/h"
    }

}

//INHERITANCE: CHILD CLASS CAR

class Car: Vehicle {

    var hasSunroof = false

    override func description() -> String {
        return "Car moving at \(speed) km/h" + (hasSunroof ? " with a sunroof" : "")
    }
}

let car = Car()

car.speed = 120

car.hasSunroof = true

print(car.description()) // Output: Car moving at 120 km/h with a sunroof

// ========= POLYMORPHISM==============

class Animal {

    func makeSound() {
        print("Some generic sound")
    }
}

class Dog: Animal {

    override func makeSound() {
        print("Bark")
    }
}
class Cat: Animal {
    
    override func makeSound() {
        print("Meow")
    }
}

let animals: [Animal] = [Dog(), Cat()]

for animal in animals {
    animal.makeSound()
}

// Output:
// Bark
// Meow

//========== ABSTRACTION ============

protocol Shape {

    func area() -> Double
}

class Circle: Shape {

    var radius: Double

    init(radius: Double) {
        self .radius = radius
    }

    func area() -> Double {
        return Double.pi * radius * radius

    }

}

class Rectangle: Shape {

    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self .width = width
        self .height = height
    }

    func area() -> Double {
        return width * height
    }

}

let shapes: [Shape] = [Circle(radius: 5), Rectangle(width: 4, height: 6)]

for shape in shapes {

    print("Area: \(shape.area())")

}

// Output:

// Area: 78.5398

// Area: 24.0

//============================================ STRUCT ============================================

/*

A struct in Swift is a value type, meaning that when you assign it to a new variable or pass it to a function, Swift creates a copy. Structs are typically used for data that’s relatively simple or doesn’t need the added functionality of a class.

*/

struct Point {
    var x: Double
    var y: Double

    func distance(to point: Point) -> Double {
        let dx = x - point.x
        let dy = y - point.y
        return (dx * dx + dy * dy).squareRoot()
    }

}

let point1 = Point(x: 3, y: 4)

let point2 = Point(x: 7, y: 1)

print(point1.distance(to: point2)) // Output: 5.0

// ============ COMPARISON OF STRUCT AND CLASS ==================

/*

In Swift, structs and classes are both powerful ways to create custom data types,

but they have several key differences.

When to Use Structs vs. Classes

Use Structs When:

You want simple data containers.

You don’t need inheritance.

You don’t need identity or object sharing.

You want predictable behavior with value copies.

Use Classes When:

You need inheritance and polymorphism.

You want shared references between multiple parts of your code.

You require identity checks between instances.

*/

struct PersonStruct {
   
    var name: String
    var age: Int

}

class PersonClass {

    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

}

// Struct (Value Type)

var personStruct1 = PersonStruct(name: "Alice", age: 25)

var personStruct2 = personStruct1

personStruct2.name = "Bob"

print(personStruct1.name) // Output: Alice (original unaffected)

print(personStruct2.name) // Output: Bob

// Class (Reference Type)

let personClass1 = PersonClass(name: "Alice", age: 25)

let personClass2 = personClass1

personClass2.name = "Bob"

print(personClass1.name) // Output: Bob (original affected)

print(personClass2.name) // Output: Bob
