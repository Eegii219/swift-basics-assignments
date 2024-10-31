//: [Previous](@previous)

import Foundation

var greeting = "Hello, Polymorphism"

class Vehicle {
    var make: String
    var model: String
    
    required init(make: String, model: String) {
        self.make = make
        self.model = model
    }
    
    func displayInfo() {
        print("Vehicle Make: \(make), Model: \(model)")
    }
}

class Car: Vehicle {
    var year: Int
    
    required init(make: String, model: String) {
        self.year = 2020 // Default year
        super.init(make: make, model: model)
    }
    
    override func displayInfo() {
        print("Car Make: \(make), Model: \(model), Year: \(year)")
    }
}

// Polymorphism in action
let vehicles: [Vehicle] = [
    Vehicle(make: "Generic", model: "Model"),
    Car(make: "Toyota", model: "Camry"),
    Car(make: "Honda", model: "Civic")
]

for vehicle in vehicles {
    vehicle.displayInfo() // Calls the appropriate method based on the actual type
}


/*
 How Polymorphism Works with Vehicle and Car
 In the context of the Vehicle and Car example we discussed, polymorphism allows you to use a Vehicle type to refer to Car instances. Here’s how this works:

 Common Interface: Both Vehicle and its subclass Car share a common interface defined by the Vehicle class. This includes properties and methods that can be accessed through a Vehicle reference.

 Method Overriding: If you had methods in the Vehicle class, the Car class could override these methods to provide specific implementations. This means that when you call a method on a Vehicle reference that points to a Car instance, the Car's overridden method is executed.

 Dynamic Behavior: This allows you to write code that can work with different types of vehicles without knowing their specific classes at compile time. You can treat all subclasses as instances of the superclass and use their common features.
 Benefits of Polymorphism:
 Code Reusability: You can write more generic code that works with any subclass of a superclass, reducing duplication.
 Flexibility: New subclasses can be added without changing existing code that uses the superclass reference.
 Maintainability: It promotes cleaner and more maintainable code by using a common interface.

 In summary, polymorphism in the context of inheritance allows you to write more flexible and reusable code by treating objects of different subclasses as instances of their superclass, enabling dynamic method resolution and promoting code reusability.
 */
