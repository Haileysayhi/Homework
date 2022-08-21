//: [⇐ Previous: Object-Oriented Swift](@previous)

import Foundation
//: ## Enumerations and Optionals in Swift
//: ### 1.

enum Gasoline:String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
}

func getPrice (price: Gasoline) -> String {
    switch price {
    case .oil92:
        return "USD 6.5"
    case .oil95:
        return "USD 5.7"
    case .oil98:
        return "USD 3.5"
    }
    
}

getPrice(price: .oil92)
Gasoline.oil92.rawValue

/*:Associated value：是指下列這個eunm中的(weather: "clear", temperature: 25)，當需要使用時可以在()中直接輸入值，使用上搭配switch會更方便。
 */
enum Nation {
    case Taiwan
    case US(weather: String, temperature: Int)
    case UK
}

let nextTravelSpot = Nation.US(weather: "clear", temperature: 25)

//: ### 2.
class Pet {
    var name:String
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet:Pet?
    init(pet: Pet?) {
        self.pet = pet
    }
}

let monica = People(pet: Pet(name: "gigi"))
if let pet = monica.pet {
    print(pet.name)
}


let chandler = People(pet: nil)
func checkPet(pet: Pet) {
    guard let pet = chandler.pet else { return }
    print("Pet name \(pet.name)")
}


//: [⇒ Next: Protocol in Swift](@next)
