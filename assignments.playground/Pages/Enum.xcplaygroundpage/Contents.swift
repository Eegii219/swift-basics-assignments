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
print(travelDirection)

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
let mercuryIndex = Planet.mercury.rawValue
print("Mercury is the \(mercuryIndex)rd planet from the sun.")



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
            //TrafficLight.red => shortened .red
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


//CASEITEABLE => PRACTICE!!!!!

print("============= Practice =============")

//basic
enum todoList {
    case task1
    case task2
    case task3
}
// Associated Value Enum
enum TodoList2 {
    case task1(String)
    case task2(String)
    case task3(String)
    case task4(Int)

    func checkedTasks() -> Bool {
        switch self {
        case .task1, .task2, .task3:
            return true
        case .task4:
            return false
        }
    }
}

func checkedTasksCount(tasks: [TodoList2]) -> Int {
    var count = 0
    
    for task in tasks {
        if task.checkedTasks() {
            count += 1
        }
    }
    
    return count
}

// Create an array of tasks
var taskList: [TodoList2] = [
    .task1("Learn Swift"),
    .task2("Learn SwiftUI"),
    .task3("Build an App"),
    .task4(3)
]

// Example task
let taskDisc = TodoList2.task1("Learn Swift")
print(taskDisc)

// Count checked tasks
let checkedCount = checkedTasksCount(tasks: taskList)
print("Checked tasks count: \(checkedCount)")
