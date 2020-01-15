//: A UIKit based Playground for presenting user interface
  
import UIKit
//import PlaygroundSupport


/*:
 # Introduction to Error Handling
 ## Distinguish B/W try?, try!, try
 */

/*:
 - Note: Error handling is just another way to write an else- if statement to deal with error message
*/


// Desgin Error (1/3)
enum HeightError: Error {
    case maxHeight
    case minHeight
}

// Call Function (2/3)

func checkHeightError(height: Int) throws {
    if height > 200 {
        throw HeightError.maxHeight
    }
    else if height < 140 {
        throw HeightError.minHeight
    }
    else {
        print("NO Error")
    }
}

/*:
 - Note: throws function always work with do - try block That is rule
 */


// Handle With Error (3/3)

do {
    try checkHeightError(height:100)
}catch HeightError.maxHeight {
    print("You Are Too Long")
}catch HeightError.minHeight {
    print("You Are Too Short")
}

//: Error Handling with object Inetilization

enum NameError: Error {
    case noName
}

class Course {
    var name:String
    
    init(name:String) throws {
        if name == "" {
            throw NameError.noName
        }else {
            self.name = name
        }
    }
}

do {
    let myCourse = try Course(name:"")
}catch NameError.noName {
    print("Please enter the name first")
}

/*:
 ### Distinguish B/W try?, try!, try
 
 try?
 
 * if error is not thrown --> Optional
 * if error thrown --> nill
 
 */
let newCourse = try? Course(name:"PK Course")

let newCourse2 = try? Course(name:"")


//: try!
let Course = try! Course(name:" Course")

//let Course2 = try! Course(name:"") // This will show you crash

