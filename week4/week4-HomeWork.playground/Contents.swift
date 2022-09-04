import UIKit

let numberClosure: (Int) -> Bool = { (x: Int) ->Bool in
    
    let result: Bool = x % 2 != 0
    
    return result
    
    
}

let number = numberClosure(7)
