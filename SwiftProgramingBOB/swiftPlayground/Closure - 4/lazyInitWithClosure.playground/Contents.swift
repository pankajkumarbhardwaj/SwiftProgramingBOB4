import UIKit

var str = "Hello, playground"

/*:
 ### How to inetilize an object with closure?
*/

struct Human {
    init() {
        print("Born 1996")
    }
}

let createBob = { () -> Human in
    let human = Human()
    return human
}()

/*:
 ### Note: Lazy var how and where?
* for shorting or data base operation
* for image compreshion
*/

class IntenseMathProblem {
    lazy var complexNumber:Int = {
        1*1
    }()
}

let problem = IntenseMathProblem() // No value for complex number
problem.complexNumber // now complex number is one

class ShortFromDatabase{
    lazy var shortNumberFromDatabase:[Int] = {
        [1,2,3,4,5,6,7,8]
    }()
}

ShortFromDatabase().shortNumberFromDatabase
//we can only get value if needed



/*:
 ## Note
 * We can not use lazy with let because it inetially nil.
 
  * We cant use lazy with computed property because since computed property is always recalculated when you modify any of variable that has a relationship with lazy property.
 
 * Lazy is only valid for member of struct or class.
 
 * for UI related task wo do not have to use lazy
 */

