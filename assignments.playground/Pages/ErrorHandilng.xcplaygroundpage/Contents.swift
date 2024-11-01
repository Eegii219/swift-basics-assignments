//: [Previous](@previous)

import Foundation

var greeting = "Hello, Error Handling!"

//Practice URI, Uri Status Code
func division(num1: Double, num2: Double) -> Double {
    
    return Double(num1 / num2)
}

//this will give inf error
print(division(num1: 0, num2: 10))


enum APIError: Error {
    case invalidUri
    case invalidFailed
    case httpError(Code: Int)
    
}
 
//func fetchDataFromAPI(uri: String, completion:@escaping(DAta, APIError)) throws -> Void {
//    
//    guard let url = URL(string: uri) else {
//        
//    }
//}



let url: String = "https://dummyjson.com/products/1"

func fetchData(from url: String) throws -> Data {
    
    guard let url = URL(string: url) else {
        throw APIError.invalidUri
    }
    
    let data = try Data(contentsOf: url)
    
    return data
}


//print(fetchData(from: url))

struct Item {
    var price: Int
    var count: Int
}

enum MachineError: Error {
    case outOfStock
    case insufficientFunds(required: Int, available: Int)
}

class Machine {
    var pay: Int = 0
    
    func insertMoney(amount: Int) {
        pay += amount
        print("Inserted \(amount). Total paid: \(pay).")
    }
    
    func buy(item: inout Item) throws {
        guard item.count > 0 else {
            throw MachineError.outOfStock
        }
        
        if pay < item.price {
            throw MachineError.insufficientFunds(required: item.price, available: pay)
        }
        
        pay -= item.price
        item.count -= 1
        print("Purchased item for \(item.price). Remaining balance: \(pay).")
    }
    
    func reset() -> Int {
        let returnedBalance = pay
        print("Resetting machine. Returning balance: \(returnedBalance).")
        pay = 0
        return returnedBalance
    }
}

// Example usage
var soda = Item(price: 150, count: 5)
let vendingMachine = Machine()

vendingMachine.insertMoney(amount: 100)

do {
    try vendingMachine.buy(item: &soda) // Not enough money
} catch MachineError.outOfStock {
    print("Error: Item is out of stock.")
} catch MachineError.insufficientFunds(let required, let available) {
    print("Error: Not enough money. Item price: \(required), Current balance: \(available).")
} catch {
    print("An unexpected error occurred: \(error).")
}

vendingMachine.insertMoney(amount: 100)

do {
    try vendingMachine.buy(item: &soda) // Purchase successful
} catch {
    print("An unexpected error occurred: \(error).")
}

let balanceReturned = vendingMachine.reset() // Reset and return balance
