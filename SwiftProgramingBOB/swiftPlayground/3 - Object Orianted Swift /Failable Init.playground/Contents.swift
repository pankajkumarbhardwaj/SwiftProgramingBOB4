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

