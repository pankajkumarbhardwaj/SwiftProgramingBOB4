//: A UIKit based Playground for presenting user interface
  
import UIKit

/*:
# Override Method, Init, Property
## Problem: Super... Super.init?
*/

class MyViewController:UIViewController {
    
    override func viewDidLoad () {
        super.viewDidLoad()
        print("Hello")
    }
}


class Vehicle {
    var description:String {
        return "I am moving at 30km/hr"
    }
    
    func warning() {
        print("Be Careful, I'm going pretty fast")
    }
}


print("\n\n.............Override Method and Property............\n")

//: ## Override Method and Property
class ToyCar:Vehicle {
    override var description:String {
        return "\(super.description) But i am small"
        //return "Hello, I am moving"
    }
    
    override func warning () {
        print("Hello Dont mind me")
        super.warning()
    }
}
ToyCar().description
ToyCar().warning()


print("\n\n.............super.init Started............\n")

//: ## super.init
class Human {
    var origin:String
    
    init(enterOrigin:String) {
        self.origin = enterOrigin
    }
}

Human(enterOrigin: "Republic of korea")

class Korean:Human {
    var city:String
    
    init(enterCity:String) {
        self.city = enterCity
        super.init(enterOrigin: "Republic of korea")
    }
    
    init(enterCity:String, enterOrigin:String) {
        self.city = enterCity
        super.init(enterOrigin: enterOrigin)
    }
}

let bob = Korean(enterCity: "Seoul")
bob.city
bob.origin

let bobby = Korean(enterCity: "Gohana", enterOrigin: "Haryana")
bobby.city
bobby.origin


print("\n\n.............Override init Started............\n")

//: ##  Override init
class Tesla {
    var numberOfWheel:Int
    
    init(enterWheelNumber:Int) {
        self.numberOfWheel = enterWheelNumber
    }
}

class Models:Tesla {
    override init(enterWheelNumber: Int) {
        super.init(enterWheelNumber: enterWheelNumber)
        print("Wow This is a beautiful car")
    }
}

let futureCar = Models(enterWheelNumber: 50)

print("Running Sucessfully")
