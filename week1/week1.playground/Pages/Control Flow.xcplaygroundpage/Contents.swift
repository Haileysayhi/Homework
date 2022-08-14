//: [⇐ Previous: Collection](@previous)

import Foundation
//: ## Control Flow
//: ### 1.
var lottoNumbers = [10, 9, 8, 7, 6, 5]
for number in lottoNumbers.suffix(3) {
    print(number)
}
print("---")
//: ### 2.
for number in lottoNumbers.sorted(by: <) {
    print(number)
}

print("---")

for number in lottoNumbers {
    if number % 2 == 0 {
        print(number)
    }
}
print("---")
//: ### 3.
var i = 0
while i < lottoNumbers.count {
    print(Array(lottoNumbers.sorted(by: <))[i])
    i += 1
}

print("---")

var p = 0
while p < lottoNumbers.count {
    if lottoNumbers[p] % 2 == 0 {
        print(lottoNumbers[p])
    }
    p += 1
}
print("---")
//: ### 4.
var x = 0
repeat {
    print(Array(lottoNumbers.sorted(by: <))[x])
    x += 1
} while x < lottoNumbers.count

print("---")

var y = 0
repeat {
    if lottoNumbers[y] % 2 == 0{
        print(lottoNumbers[y])
    }
    y += 1
} while y < lottoNumbers.count

/*: ### 5.
while會先判斷condition後執行loop，repeat-while會先執行一次loop後才判斷condition。
*/
 
//: ### 6.
var isRaining = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//: ### 7.
var jobLevel = 4

switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job.")
}

//: [⇒ Next: Function](@next)
