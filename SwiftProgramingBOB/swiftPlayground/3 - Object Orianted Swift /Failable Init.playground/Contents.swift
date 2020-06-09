//: A UIKit based Playground for presenting user interface
  
import UIKit

/*:
## Problem
### Can Initilization fail?
 Yes And Defined with : ?
*/

enum NameError:Error {
    case noName
}

class Course {
    var name:String
    
    init?(name:String) {
        if name == "" {
            return nil
        }
        self.name = name
    }
}

let myCourse = Course(name: "MyCourse")
let blankCourse = Course(name: "")


//: ## required init
class classA {
    required init() {
        let a = 10
        print(a)
    }
}

class classB: classA {
    required init() {
    let b = 30
    print(b)
    }
}


//______________________
let objA = classA()
let objB = classB()

class classC: classA {
}
let objC = classC()
// prints 10 ..superclass init method gets called.

//: Write the required modifier before the definition of a class initializer to indicate that every subclass of the class must implement that initializer.

//: You must also write the required modifier before every subclass implementation of a required initializer, to indicate that the initializer requirement applies to further subclasses in the chain. You do not write the override modifier when overriding a required designated initializer.


//: ## Swift — Creating a Custom View From a XIB (Updated for Swift 5)
// https://medium.com/better-programming/swift-3-creating-a-custom-view-from-a-xib-ecdfe5b3a960
