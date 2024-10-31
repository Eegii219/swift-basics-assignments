//: [Previous](@previous)

import Foundation

var greeting = "Hello, HOF, Higher Order Functions"
/*map:
    compactMap
    typeCasting
 filter:,
 forEach:
 */


//Vehicle and Car classes: for to operate HOF!
class Vehicle {
    var make: String
    var model: String
    
    required init(make: String, model: String) {
        self.make = make
        self.model = model
    }
    
    func displayInfo() -> String {
        return "Vehicle Make: \(make), Model: \(model)"
    }
}

class Car: Vehicle {
    var year: Int
    
    required init(make: String, model: String) {
        self.year = 2020 // Default year
        super.init(make: make, model: model)
    }
    
    override func displayInfo() -> String {
        return "Car Make: \(make), Model: \(model), Year: \(year)"
    }
}


let vehicles: [Vehicle] = [
    Vehicle(make: "Generic", model: "Model"),
    Car(make: "Toyota", model: "Camry"),
    Car(make: "Honda", model: "Civic"),
    Vehicle(make: "Ford", model: "Fusion")
    ]

// Using map to create an array of vehicle descriptions
let vehicleDescriptions = vehicles.map { $0.displayInfo() }
print("Vehicle Descriptions:")
print(vehicleDescriptions)

// Using filter to get only cars
let cars = vehicles.filter { $0 is Car }
print("\nFiltered Cars:")
for car in cars {
    print(car.displayInfo())
}

// Using reduce to count the total number of vehicles
let totalVehicles = vehicles.reduce(0) { (count, _) in count + 1 }
print("\nTotal Number of Vehicles: \(totalVehicles)")


//
//var nums: [Int] = [1, 2, 3, 4, 5]
//
//var squareNums: [Int] = nums.map { $0 * $0 }
//
//var sumNums: Int = nums.reduce(0) { $0 + $1 }
//
//print(nums)
//print(squareNums)
//print(sumNums)
//
//var arrString:[String] = ["Hello", "World", "Swift"]
//var uppercaseArray: [String] = arrString.map{$0.uppercased()}
//print(arrString)
//print(uppercaseArray)
//
//
//struct Person {
//    var name: String
//    var age: Int
//}
//let people: [Person] = [Person(name: "Swift", age: 20),
//                        Person(name: "Java", age: 21),
//                        Person(name: "Python", age: 22),
//                        Person(name: "C++", age: 23)]
//
//
//
//let names = people.map{$0.name}
//
//print(names)
//
//
//
//var mixNumArray : [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//var evenNums: [Int] = mixNumArray.filter{$0 % 2 == 0}
//print(mixNumArray)
//print(evenNums)
//
//
//struct Employee {
//    var name: String
//    var id: Int
//    
//}
//
//var employees = [Employee(name: "Alice", id: 20),
//                 Employee(name: "Bob", id: 21),
//                 Employee(name: "Doe", id: 22),
//                 Employee(name: "Sam", id: 23),
//                 Employee(name:"Sarah", id: 30)]
//
//var higherIdNumEmps = employees.filter{ $0.id > 21}
//print(higherIdNumEmps)
//
//
////var olderEmps = employees.filter{$0.id > 22}.map{$0.name.starts(with: "S")}
////print(olderEmps)
//
//
//var fruits: [String] = ["Apple", "Banana", "Orange", "Mango", "Grapes"]
//var sortDecOrder = fruits.sorted{$0 > $1}
//print(sortDecOrder)
//
///* Internally in this example
// -type cast is filtering the casted type element form the mixArray
// - and then compactMap{} operation is removing the nil from mixArray */
//var mixArr = ["1", "2", "Hi", "Word"]
//print(mixArr.compactMap{Int($0)})
//print(mixArr.compactMap{String($0)})
//
