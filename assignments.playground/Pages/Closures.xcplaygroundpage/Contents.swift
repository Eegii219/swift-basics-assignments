//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Very Important topic for interview

/*
 $0 => in closure first Element
 @ecaping => @MainActor
 auto clouse syntax !!!
 trailing closure
 */

//
////1. Basic Closure
//let sum: (Int, Int) -> Int = { x, y in
//    return x + y
//}
//print(sum(1, 2))
//
////2. Closure with No Parameters
//let greet: () -> Void = {
//    print("Hello World")
//}
//greet()
//
////3. Closure with Implicit Return
//let multiply: (Int, Int) -> Int = { x, y in
//    return x * y
//}
//
//print(multiply(1, 2))
//
////4. Closure as a Function Parameter
//func operationOnNumber(_ x: Int, _ y: Int, closure: (Int, Int) -> Int) -> Int {
//    return closure(x, y)
//}
//
//var resultOperation = operationOnNumber(10, 5) { ( x, y) in
//    return x * y
//}
//
//print( resultOperation)
//
////5. Trainling Closure Syntax
//func printName(_ name: String, closure: () -> Void) {
//    print("Hello my name is :")
//    closure()
//    print("Bye")
//}
//
//
//func higherOrderFunctions() {
//    let names = ["Swift", "Java", "Python", "C++"]
//    let myClosure: (String) -> Void = { name in
//        print("Hello \(name)")
//    }
//    names.forEach(myClosure)
//}
//
//var divitionOpereator: (Int, Int) -> Int = { x, y in
//    return x / y
//}
// 
//divitionOpereator(10, 5)
//print(divitionOpereator(10, 5))
//
//
//var concatClosure: (String, String) ->String = {
//    return ($0 + $1)
//}
//
//print(concatClosure("Hello", "World"))
//
//
//func wishBirthday(wishTheme:()-> Void){
//    print("Happy Birthday")
//    wishTheme()
//}
//
//wishBirthday {
//    print("Dear")
//}
//
//func greetings(sayHi:()-> Void){
//    print("Everyone!")
//    sayHi()
//}
//
//greetings() {
//    print("Hello Hello")
//}
