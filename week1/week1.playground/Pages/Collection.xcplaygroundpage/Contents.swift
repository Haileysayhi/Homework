//: [⇐ Previous: Basic](@previous)

import Foundation
//: ## Collection
//: ### 1.
var myFriends: [String] = []

//: ### 2.
myFriends += ["Ian", "Bomi", "Kevin"]

//: ### 3.
myFriends.append("Michael")

//: ### 4.
myFriends.remove(at: 2)
myFriends.insert("Kevin", at:0)

//: ### 5.
for friend in myFriends {
    print(friend)
}

/*: ### 6.
使用 myFriends[5] 可以找出index 5，結果顯示error，因為index 5 超出array範圍
*/

/*: ### 7.
使用 array.first
*/

/*: ### 8.
使用 array.last
*/

//: ### 9.
var myCountryNumber: [String: Int] = [:]

//: ### 10.
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

//: ### 11.
myCountryNumber["GB"] = 0

//: ### 12.
var emptyDictionary: [String: Int] = [:]

/*: ### 13.
使用.removeValue(forKey: )
*/

//: [⇒ Next: Control Flow](@next)
