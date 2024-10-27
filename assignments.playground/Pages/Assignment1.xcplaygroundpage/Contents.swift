//: [Previous](@previous)

import Foundation

var greeting = "Hello, Assignment 1"


//COLLECTIONS

//=================== ARRAY INITIALIZATIONS ================

let a1 = [1, 2, 3, 4, 5]

//let animals: [String] = ["cat", "dog", "bird"]
//print(animals)

let fruits:Array<String> = ["apple", "banana", "cherry"]
print(fruits)

// empty array
let names: Array<String> = []
print(names)
let emptyArray = Array<Int>()
print(emptyArray)


//
let someNumbers = Array(1...10)
print(someNumbers)


// repeat array
let repeatArray: Array<Int> = Array(repeating: 1, count: 10)
print(repeatArray)


//=================== IMMUTABLE ARRAYS ==========================


let animals: [String] = ["cat", "dog", "bird"]
print(animals)

//animals is a immutable array so we can't assign new value to it!!
//animals[2] = "elephant"


//=================== MUTABLE ARRAYS ==========================

var pets = ["cat", "dog", "bird"]
print(pets)
pets.append("snake")
print(pets)
pets.remove(at: 3)
print(pets)
pets[2] = "elephant"
print(pets)

//======================== ARRAY OPERTATIONS==================================

//APPEND AN ELEMENT: add element
pets.append("horse")
print(pets)

// APPEND AN ARRAY: add entire array into a current array
pets += ["elephant", "lion"]
print(pets)

//INSERT: insert an element at a sertain positon
pets.insert("cow", at: 0 )
print(pets)

var lengthOfPets = pets.count
print("Length of the pets array is: \(lengthOfPets)")


//CONCATINATING 2 arrays
let nums1: [Int] = [1, 2, 3]
let nums2: [Int] = [4, 5, 6]
let nums3: [Int] = nums1 + nums2
print(nums3)





//=================== SET INITIALIZATIONS ================

//SET
var numbers:Set<Int> = [1,2,3,3,4,5]
print(numbers)
numbers.insert(6)
print(numbers)
numbers.remove(6)
print(numbers)

var numbers2:Set<Int> = [1,2,3,3,4,5]

print()


