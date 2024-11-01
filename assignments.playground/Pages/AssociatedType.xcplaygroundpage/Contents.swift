//: [Previous](@previous)

import Foundation

var greeting = "Hello,AssociatedType"


/*
 Associated Type: holds pace for type of a variable
 */

//protocol Container {
//    associatedtype Item
//    func addItem(_ item: Item)
//    func getItem(at index: Int) -> Item
//}
//
//struct IntContainer: Container {
//    typealias Item = Int
//    
//    private var items: [Int] = []  // Array to store the items
//    
//    mutating func addItem(_ item: Item) {
//        items.append(item)  // Append item to the array
//    }
//    
//    func getItem(at index: Int) -> Item {
//        return items[index]  // Return item at specified index
//    }
//}
//
//var c = IntContainer()
//
//c.addItem(1)
//c.addItem(2)
//c.addItem(3)
//
//print(c.getItem(at: 2))  // Output: 3


print("================== Practice ============================")

protocol Container {
    associatedtype Item
   mutating func addItem(_ item: Item)
    func getItem(at index: Int) -> Item
}

struct IntContainer: Container {
    typealias Item = Int
    
    private var items: [Int] = []  // Array to store the items
    
    mutating func addItem(_ item: Item) {
        items.append(item)  // Append item to the array
    }
    
    func getItem(at index: Int) -> Item {
        return items[index]  // Return item at specified index
    }
}

var c = IntContainer()

c.addItem(1)
c.addItem(2)
c.addItem(3)

print(c.getItem(at: 2))  // Output: 3


struct StringContainer: Container {
    typealias Item = String
    
    private var items: [String] = []
    
    mutating func addItem(_ item: Item) {
        items.append(item)
    }
    
    func getItem(at index: Int) -> Item {
        return items[index]
    }
}

var stringContainer = StringContainer()
stringContainer.addItem("Hello")
stringContainer.addItem("World")
print(stringContainer.getItem(at: 0))  // Output: Hello
print(stringContainer.getItem(at: 1))  // Output: World

struct GenericContainer<T>: Container {
    private var items: [T] = []
    
    mutating func addItem(_ item: T) {
        items.append(item)
    }
    
    func getItem(at index: Int) -> T {
        return items[index]
    }
}

var intContainer = GenericContainer<Int>()
intContainer.addItem(10)
intContainer.addItem(20)
print(intContainer.getItem(at: 1))  // Output: 20

var stringGenericContainer = GenericContainer<String>()
stringGenericContainer.addItem("Swift")
stringGenericContainer.addItem("Programming")
print(stringGenericContainer.getItem(at: 0))  // Output: Swift
