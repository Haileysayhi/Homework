

import Foundation
//: ## Object-Oriented Swift

//: ### 1.
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    let gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    func eat() {
        print("I eat everything!")
    }
    
}

let animal = Animal(gender: .female)
animal.eat()

//: ### 2.
class Elephant:Animal {
    override func eat() {
        print("fruit")
    }
}

class Tiger:Animal {
    override func eat() {
        print("chicken")
    }
}

class Horse:Animal {
    override func eat() {
        print("grass")
    }
}
let elephant = Elephant(gender: .female)
elephant.eat()
let tiger = Tiger(gender: .male)
tiger.eat()
let horse = Horse(gender: .undefined)
horse.eat()

//: ### 3.
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot: Tiger(gender: .male))

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

/*: ### 4.
 Struct跟Class最大的不同處是struct是Value type而class是Reference type。
*/

/*: ### 5.
* Instance method:是指在class、struct、enum中產生的function，在使用時需要先宣告一個變數且實例化後用點語法呼叫使用。
* Type method:是指在class、struct、enum中產生的function(前面會加上class 或 static)，但是只給class、struct、enum自己使用，所以在使用時是用“型別.func名字()”的方式呼叫。
 */

/*: ### 6.
 Initialization是指在class、struct、enum中為Stored Properties設定初始值。
*/

/*: ### 7.
在instance method中的self是指宣告在class、struct、enum中的Stored Properties，在Type method中的self則是指向型別自己本身。
*/
/*: ### 8.
* Reference type:每一個實例會共享資料，當被指派給var或let時會共享一份資料，所以在變動第二個變數時也會影響到原本的變數。例如：class
* Value type:每一個實例都是獨立的，當被指派給var或let時會從原本的資料中複製一份變成一個完全獨立的新的實例，之後任何一個變數有變動時互相不影響。例如：struct
*/


//: [⇒ Next: Enumerations and Optionals in Swift](@next)
