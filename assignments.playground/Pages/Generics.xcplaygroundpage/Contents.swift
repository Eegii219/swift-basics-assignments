//: [Previous](@previous)

import Foundation

var greeting = "Hello, Generics"



func swap<T, T>(_ a: inout T, _ b: inout k) {
    let temp = a
    a = b
    b = temp

}

var a: Int = 1
var b: String = Int ("2")

print(swap(&a,Int (&b)))

