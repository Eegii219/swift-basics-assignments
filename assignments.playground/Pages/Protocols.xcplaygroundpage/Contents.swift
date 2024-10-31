import Foundation

var greeting = "Hello, Protocol"
/*
 Protocol:
    -inheritance
    -liase = combine prorocols and assigning into variable
 */

print("=================== Simple Apple Struct and Protocol ===================")

protocol FruitProtocol{
    
    func eatable() -> String
}


//Protocol optional method for struct
extension FruitProtocol {
    func isOrganic(barCode: Int) -> Bool{
        if barCode >= 9 {
            return true
        } else{
            return false
        }
    }
 }

struct Apple: FruitProtocol {
    
    var type: String
    var taste: String?
    var barCode: Int?
    
    func eatable() -> String {
        
        switch taste {
        case "sour":
            return "Apple is sour and it is eatable but not enjoyable."
        case "juicy":
            return "Juicy apple is eatable."
        case "green sour":
            return "Green sour apple is good for smoothies."
        case "rotten":
            return "Rotten apple is not eatable."
        default:
            return "Any apples are eatable unless it is rotten!"
        }
    }
}

       
// Usage Example
// apple struct Obj named= apple1 instantiated
let apple1 = Apple(type:"Fuji", taste: "sour")

//eatable PROTOCOL function operating!!!
var eatable = apple1.eatable()
print("Can I eat this \(apple1.type) apple?  \n This \(apple1.type) \(eatable)")

// isOrganic PROTOCOL EXTENTION operating
var organic = apple1.isOrganic(barCode: 10)

//TERNARY OPERATION operating on organic func boolean result!!!(result based on the organic boolean)
let result: String = organic ? "It is Organic" : "It is not Organic"
print("Is this \(apple1.type) apple organic? \n \(result)")

print("================ END OF STRUCT PROTOCOL && EXTENSION ===============")


print("================= CLASS PROTOCOL && EXTENSION ===================")

//Super Class
class Person {
    var name: String
    var cellPhone: Int?
    
    init(name: String, cellPhone: Int? = nil) {
        self.name = name
        self.cellPhone = cellPhone
    }
    
}

//Sub Class
class Student: Person, StudentProtocol {
    var id: Int
    
    init(id: Int, name: String, cellPhone: Int?) {
    
        self.id = id
        super.init(name: name, cellPhone: cellPhone)
    }
    
    func isStudent(id : Int) -> Bool {
        return self.id == id
    }
}

//Protocol/interface that verifies wheather student or not
protocol StudentProtocol {
    func isStudent( id : Int) -> Bool

}

//Protocol Optionl method for class
extension StudentProtocol {
    func isPhoneActive(answer : String) -> Bool {
        return answer == "yes"
    }
}


                    
// Usage Example
let student = Student( id: 123, name: "John Doe", cellPhone: 1234567890)
//print(student)
print("Is student with ID 123? \(student.isStudent(id: 123))")
print("Is phone active? \(student.isPhoneActive(answer: "yes"))")
                    
var newNum = 9876
student.cellPhone = newNum

//Nil Coalescing (??): Provides a default value if the optional is nil.
print("New cell phone number: \(student.cellPhone ?? 0)")


print("================ END OF CLASS PROTOCOL && EXTENSION ===============")



print("=========== Extra Practice =================")


struct CookSoup: CookingProtocol {
    var broth: String
    var ingredients: [String: Int]
    var protein: String?
    
    func typeOfSoup(meat protein: String?) -> Bool {
        // Check if protein is nil to determine if it's a veggie soup
        return protein == nil
    }
    
    func portion() -> Int? {
        return 1
    }
    
    func whatAreTheIngr() -> [String: Int] {
        return ingredients
    }
    
    func howMuchItemIn() -> Int {
        return ingredients.count
    }
}

protocol CookingProtocol {
    func portion() -> Int?
    func typeOfSoup(meat protein: String?) -> Bool // Updated to match the struct
    func whatAreTheIngr() -> [String: Int]
}

// Usage Example
var greens: [String: Int] = ["Kale": 1, "Carrot": 3, "Scallion": 2]
var greenSoup = CookSoup(broth: "Veggie", ingredients: greens, protein: nil)

let whatTypeOfSoup = greenSoup.typeOfSoup(meat: greenSoup.protein) ? "Veggie Soup" : "Not a Veggie Soup"

print(whatTypeOfSoup)
print(greenSoup)

// Unwrap the optional portion value
if let portionSize = greenSoup.portion() {
    print("What is this soup portion? \nPortion for: \(portionSize)")
} else {
    print("No portion size available")
}

let totalItems = greenSoup.howMuchItemIn()
print("Total items: \(totalItems)")


// Iterating through ingredients
let ingredients = greenSoup.whatAreTheIngr()
print("All items and quantities:")
for (ingredient , quantity) in ingredients {

    print("\(ingredient): \(quantity)")
}


print("======================== PROTOCOL INHERITANCE =========================")

protocol DrivingProtocol {
    func drive() -> Bool
    func stop() -> Bool
    func brake() -> String
}

protocol Vehicle: DrivingProtocol {
    func keyTurn() -> Bool
    
}


struct Car: Vehicle {
    var make: String
    var model: String
    
    func keyTurn() -> Bool {
        return true
    }
    
    func drive() -> Bool {
        return true
    }
    
    func stop() -> Bool {
        return true
    }
    
    func brake() -> String {
        return "slowing"
    }
    
    
}


protocol Cook{
    func boil() -> String
}

protocol Prepare {
    func chop() -> String
}

typealias CookAndPrepare = Cook & Prepare

struct MakeSoup: CookAndPrepare {
    
    
    var broth: String
    var ingredients: [String: Int]
    var protein: String?
    
    func boil() -> String {
        return "Boiling water"
    }
    func chop() -> String {
        return "Chopping vegetables"
    }
}


var str = "abc"
var capitalized = str.capitalized
print(capitalized)


