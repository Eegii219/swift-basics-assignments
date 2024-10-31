//: [Previous](@previous)

import Foundation

var greeting = "Hello, Initializers"

/*
 in the class:
    attributes have default values then compiler does not ask the method init ()
*/

/*
 1.Default Initializer
*/
class Person{
    //properies have default values, compiler will not ask init!!
    var name: String = "Default Name"
    var age: Int = 0
}

var p = Person()
print(p)


/*
 2. memberwise initializer
        - this is only available for struct by default and we don't have to write/code it!
 Employer struct has memberwise initializer
*/
struct Employer{
    var name: String
    var position: String
    
}
/*
3. Convience Initializer / init overlodading!!!
*/

class Person1{
    var name: String
    var age: Int?
    var gender: String
    //designated initializer makes sure when we instantiate a object this value is assigned
    init (name:String){
        self.name = name
        self.gender = "" // provide default value for gender
       
    }
    // init overlodading!!!
    convenience init(_ gender:String, _ age:Int){
        //calling designated initializer to make sure that all properties initialized
        self.init(name: "")
        self.gender = gender
        self.age = age
    }
}
print("======= CONVENIENCE INITIALIZER INSTANTIATION OUTPUT =======")

let p1 = Person1(name:"Alice")
let p2 = Person1("Female", 21)

print("Name:\(p1.name), gender:\(p1.gender),age: \(String(describing: p1.age))")//Name:Alice, gender:,age: nil
print("P2 name:\(p2.name) , \(p2.gender)")//P2 name: , Female
/*
 4. Failable Initializer
    use case example for this: let us inistantiate a qulifiable instance!!!
    intstantiate cars that only year 2020 or above years!
 
*/

class Car{
    var make: String
    var model: String
    var year: Int
    
    // Failable Initializer
    // this init lets me instantiate cars that only year 2020 or above years cars!
    init?(make: String, model: String, year: Int) {
        if year < 2000 {
            return nil
        }
        self.make = make
        self.model = model
        self.year = year
    }
}

print("======= FAILABLE INITIALIZER INSTANTIATION OUTPUT =======")

// Attempt to create a valid Car
if let car1 = Car(make: "Toyota", model: "Camry", year: 2021) {
    print("Car created: \(car1.make) \(car1.model) \(car1.year)")
} else {
    print("Car could not be created due to year.")
}

// Attempt to create an invalid Car
if let car2 = Car(make: "Ford", model: "Focus", year: 1999) {
    print("Car created: \(car2.make) \(car2.model) \(car2.year)")
} else {
    print("Car could not be created due to year.")
}


/*
 5. Required Initializer
 In summary, convenience initializers enhance usability, readability, and maintainability of your code.
        Parent class always  required to have  required init!!!
        So that Child class will have: super.init()
        And the Child class can have required init() initializer
        Inorder to Instantiate optionally attributes like Convienance init!!!
 
 Key Points:
 Single Line Initialization: You can set multiple properties (like name, id, department, and teamSize) all at once, instead of having to initialize them separately.
 Clarity: The code is clearer and easier to understand, as it explicitly shows all the values being set during instantiation.
 Default Values: It allows you to provide default values for any attributes that are not specified, ensuring that every instance is initialized correctly.
*/
class Employee {
    var name: String
    var id: Int
    
    // Required initializer
    //required initializer must be implemented by any subclass.
    required init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}

class Manager: Employee {
    var department: String
    var teamSize: Int
    
    // Required initializer
   //Manager class implements this initializer, providing default values for department and teamSize.
    required init(name: String, id: Int) {
        self.department = "General" // Default value
        self.teamSize = 0 // Default value
        super.init(name: name, id: id)
    }
    
    // Convenience initializer
    // convenience initializer to set all properties, including those defined in the Employee class.
    convenience init(name: String, id: Int, department: String, teamSize: Int) {
        self.init(name: name, id: id)
        self.department = department
        self.teamSize = teamSize
    }
}

print("======= REQUIRED INITIALIZER INSTANTIATION OUTPUT =======")

// Using the required initializer
let employee = Manager(name: "Alice", id: 101)
print("Employee Name: \(employee.name), ID: \(employee.id), Department: \(employee.department), Team Size: \(employee.teamSize)")

// Using the convenience initializer
let manager = Manager(name: "Bob", id: 102, department: "Sales", teamSize: 5)
print("Manager Name: \(manager.name), ID: \(manager.id), Department: \(manager.department), Team Size: \(manager.teamSize)")


//====================== Practice Initializer =========================


//designated initializer example
class Person2{
    var name: String
    var age: Int? // initiized with nil value
    var gender: String!
    
    //designated initializer with state! no parameter!
    init(){
        name = "None"
    
    }
}

class Person3{
    var firstName: String
    var lastName: String
    
    //designated initializer => has parameters and states
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
}

//================================ Enheritance, Super Init ======================
class Bird{
    
    var name: String
    var size: Int
    
    init(name: String, size: Int) {
        self.name = name
        self.size = size
    }
}


class Penguin: Bird{
     var color: String
    
    init(name: String, size:Int, color: String){
        self.color = color
        super.init(name:name, size:size)
    }
}




class Fruit{
    var type: String
    
    init(type: String) {
        self.type = type
    }
}

class Apple: Fruit{
    var sort: String
    var size: Int
   
    init(type: String,sort: String, size: Int) {
        //states of init
        self.sort = sort
        self.size = size
        //inherit parent class init
        super.init(type: type)
    }
}

let apple1 = Apple(type: "Fuji", sort: "small", size: 1)

print(apple1)
print(apple1.type, apple1.sort, apple1.size)
