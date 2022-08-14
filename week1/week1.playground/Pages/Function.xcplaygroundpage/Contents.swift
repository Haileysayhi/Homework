//: [Previous](@previous)

import Foundation
//: ## Function
//: ### 1.
func greet(person:String) -> String {
    return "Hello, \(person)."
}
greet(person: "Luke")

//: ### 2.
func multiply(a:Int, b:Int = 10) {
    print(a*b)
}
//: ### 3.
func student (name:String, age:Int) {
    print("Student:\(name), age:\(age)")
}
student(name: "Hailey", age: 25)
/*:
* Parameter name:是指function中 func student(name:String, age:Int) 中的name及age.
* Argument label:是指呼叫function時student(name: "Hailey", age: 25)中的Hailey及25.
*/
    
/*: ### 4.
* 1.回傳String
* 2.回傳Double
*/
    
//: [Next](@next)

