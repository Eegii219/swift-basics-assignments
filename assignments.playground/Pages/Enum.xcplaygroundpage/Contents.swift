//: [Previous](@previous)

import Foundation

var greeting = "Hello,Enum"

//Basic Enum
enum Direction {
    case north
    case south
    case east
    case west
}

// Usage
let travelDirection = Direction.north

switch travelDirection {
case .north:
    print("Traveling north")
case .south:
    print("Traveling south")
case .east:
    print("Traveling east")
case .west:
    print("Traveling west")
}

//Enum with Raw Values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

// Usage
let earthIndex = Planet.earth.rawValue // 3
print("Earth is the \(earthIndex)rd planet from the sun.")


//Enum with Associated Values
enum Result {
    case success(String)
    case failure(Error)
}

// Usage
func performTask() -> Result {
    // Simulating a successful task
    return .success("Task completed successfully.")
}

let taskResult = performTask()

switch taskResult {
case .success(let message):
    print(message)
case .failure(let error):
    print("Task failed with error: \(error.localizedDescription)")
}

//Enum with Methods
enum TrafficLight {
    case red
    case yellow
    case green

    func action() -> String {
        switch self {
        case .red:
            return "Stop"
        case .yellow:
            return "Prepare to stop"
        case .green:
            return "Go"
        }
    }
}

// Usage
let light = TrafficLight.green
print(light.action()) // "Go"
