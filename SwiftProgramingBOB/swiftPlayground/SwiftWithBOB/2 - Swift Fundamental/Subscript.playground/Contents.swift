//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*:
 ### Usage Case
 1. Get the number of row in table or collection
 2. Anything has todo with pair and value 
 */


struct WeekDays {
    var days = ["Monday","Tuesday", "Wednesday", "Thursday", "Friday", ]
    
    subscript(index:Int) -> String {
        return days[index]
    }
}

let myDays = WeekDays()
myDays[0]


struct HelthInfo {
    var info = ["Height" : 183,"Waight" : 70, "Body Fat": 12.5 ]
    
    subscript(key:String) -> Double {
        if let tKey = info[key] as? Double {
            return tKey
        }
        return 0.0
    }
}

let pkInfo = HelthInfo()
let myabc = pkInfo["abc"]
let myHight = pkInfo["Height"]
