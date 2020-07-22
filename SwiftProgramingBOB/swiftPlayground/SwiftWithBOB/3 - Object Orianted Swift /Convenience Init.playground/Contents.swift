//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*:
## Problem
### I am Lazy Can we inetilize quickly?
*/
class Human {
    var name: String
    
    //designated Init Method (Which is not convenience)
    init(name:String) {
        self.name = name
    }
    
    //Convenience Init intializes the designated Init Method
    convenience init() {
        self.init(name:"I Am PK")
    }
}
let sac = Human(name: "Sachin")
let pk = Human()


let randomColour = UIColor(displayP3Red: 80/255, green: 80/255, blue: 85/255, alpha: 1.0)

extension UIColor {
    convenience init(r:Float, g:Float, b:Float) {
        self.init(displayP3Red: CGFloat(r/255), green: CGFloat(g/255), blue: CGFloat(b/255), alpha: 1.0)
    }
}

let myFavColour = UIColor(r: 80, g: 80, b: 85)
