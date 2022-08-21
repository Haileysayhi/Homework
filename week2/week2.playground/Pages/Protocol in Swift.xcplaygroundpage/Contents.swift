//: [⇐ Previous Enumerations and Optionals in Swift](@previous)

import Foundation
//: ## Protocol in Swift

//: ### 1~4.
protocol PoliceMan {
    func arrestCriminals()
}

struct Person: PoliceMan {
    let name: String
    let toolMan: ToolMan
    
    func arrestCriminals() {
        print("Go to jail!")
    }
}

protocol ToolMan {
    func fixComputer()
}

//: ### 5&6.
struct Engineer: ToolMan {
    func fixComputer() {
        print("I'm really good at fix computer!")
    }
}

let steven = Person.init(name: "Steven", toolMan: Engineer())
steven.arrestCriminals()

//: [⇒ Next: Error Handling in Swift](@next)




