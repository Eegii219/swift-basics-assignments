//: [Previous](@previous)

import Foundation

var greeting = "Hello, Assignment 1"


//COLLECTIONS

//=================== ARRAY INITIALIZATIONS ================
print("Array")
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

let fruits2:Set<String> = ["apple", "banana", "cherry"]
let nums:Set<Int> = [1,2,3,4,5]
let emtSet:Set<Int> = []
let emptySet:Set<Int> = Set<Int>()

var items:Set<String> = ["laptop", "mug", "pencil"]
items.insert("pen")

// ==================== SET OPERATIONS ==========================
print("Set")

//Union: Combines two sets, removing any duplicates.
let set1: Set = [1, 2, 3]
let set2: Set = [3, 4, 5]
let unionSet = set1.union(set2) // [1, 2, 3, 4, 5]
print(unionSet)

//Intersection: Creates a new set with only the common(repeated) elements between two sets.
let intersectionSet = set1.intersection(set2) // [3]
print(intersectionSet)

//Subtraction: Creates a new set with elements that are not in another set.
let subtractionSet = set1.subtracting(set2) // [1]
print("subtractionSet: \(subtractionSet)")

//Symmetric Difference: Creates a new set with elements that are in either set, but not in both.let
let symmetricDifferenceSet = set1.symmetricDifference(set2) // [1, 2, 4, 5]
print(symmetricDifferenceSet)

//Insert: Adds an element to a mutable set.
var mutableSet: Set = [1, 2, 3]
mutableSet.insert(4)

//Remove: Removes an element from a mutable set.
mutableSet.remove(2)

//Contains: Checks if an element is in the set.
let containsElement = mutableSet.contains(3) // true



//=============== DICTIONARY INITIALIZATIONs================
//Empty Dictionary:
let emptyDict = [String: Int]()
//Dictionary with Initial Key-Value Pairs:
let fruitsDic = ["apple": 1, "banana": 2, "orange": 3]
//Dictionary with Explicit Type Annotation:
let scores: [String: Int] = ["Alice": 95, "Bob": 80, "Charlie": 85]
//Dictionary with Type Inference:
let colors = ["red": "#FF0000", "green": "#00FF00", "blue": "#0000FF"]
//Mutable Dictionary:
var mutableDict: [String: Bool] = ["isLoggedIn": false, "isAdmin": true]

// Accessing Values: Retrieve a value using its key.
//let fruit = fruitsDic["banana"]
//print(fruit)

//Adding or Updating Values: Add a new key-value pair or update an existing one.
var mutableFruitsDic: [String: Int] = ["apple": 1, "banana": 2, "orange": 3]
print(mutableFruitsDic)
mutableFruitsDic["apple"] = 4
print(mutableFruitsDic)

// Removing Values: Remove a key-value pair from the dictionary.
mutableFruitsDic.removeValue(forKey: "banana")
print(mutableFruitsDic)

// Checking for Keys: Verify if a key exists in the dictionary.
let hasApple = mutableFruitsDic.keys.contains("apple") // true
print(hasApple)

//Iterating Over Key-Value Pairs: Loop through all entries in the dictionary.
for (fruit, count) in mutableFruitsDic {
    print("\(fruit): \(count)")
}

//Getting All Keys or Values: Retrieve all keys or values as arrays.
let allFruits = Array(mutableFruitsDic.keys)
let allCounts = Array(mutableFruitsDic.values)
