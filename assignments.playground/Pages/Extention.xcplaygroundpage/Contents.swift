//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//extention is used for add new behavior to class or struct and serves as code seperation


struct Bill {
    var amount: Double
    var tax: Double
    var tip: Double
    var totalAmmount: Double
    
    func getTotalAmount() -> Double {
        totalAmmount = amount + tax + tip
        return totalAmmount
    }
}


extension Bill {
    func splitBill(with people: Int) -> [Double] {
        return self.totalAmmount / people
    }
}

