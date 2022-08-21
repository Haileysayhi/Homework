//: [⇐ Previous Protocol in Swift](@previous)
import Foundation
//: ## Error Handling in Swift
enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumerGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}

let number = GuessNumerGame()
do {
    try number.guess(number: 20)
} catch {
    print("Error")
}
