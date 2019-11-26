import UIKit

var str = "Hello, playground"

/*:
## Problem: Allocate and Deallocate by ARC
*/
/*:
 Note: What is memory?
    Ram - Fridge
    Disk - Storage
 */


class Passport {
    weak var human:Human?
    let citizenship:String
    
    init(citizenship:String) {
        self.citizenship = citizenship
        print("\(citizenship) Passport is generated")
    }
    
    deinit {
        print("I, Paper, am gone")
    }
}

class Human {
    var passport:Passport?
    let name:String
    
    init(name:String) {
        self.name = name
        print("\(name) generated")
    }
    
    deinit {
        print("I, \(name), gone")
    }
}

//Passport(citizenship: "Replic of India")
//
//var myPassport = Passport(citizenship: "the Mars")

//var Bobby:Human? = Human(name: "Bobby")
//var BobbyPasport:Passport? = Passport(citizenship: "The Marsh")
//Bobby = nil
//BobbyPasport = nil

/*:
 ### NOTE: THE ONLY RULE IS
 * If the refrence count is zero/ No relationship , the object gets purged out of the memory.
 */

//var Bob:Human? = Human(name: "Bobby")
//var BobPasport:Passport? = Passport(citizenship: "The Marsh")
//
//Bob?.passport = BobPasport
//BobPasport?.human = Bob
//
//Bob = nil
//BobPasport = nil

/* 3
 The memory is not deallocated and because the refrence count is two for both Bob and BobPassport. Retiontion cycle OR Memory leak
 */

var Bob:Human? = Human(name: "Bobby")
var BobPasport:Passport? = Passport(citizenship: "The Marsh")

Bob?.passport = BobPasport
BobPasport?.human = Bob

//:Option one
//Bob = nil
//BobPasport = nil

//:Option two
BobPasport = nil
Bob = nil


/*:
 What is memory?
 * Ram - Fridge
 * Disk - Storage
 */
/*:
 THE ONLY RULE IS:
 * If the refrence count is zero/ No relationship , the object gets purged out of the memory.
 */
