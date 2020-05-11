//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*:
 How you distinguish between as, as?, as! ?
 as -> Use for upcasting
 as? -> -> Use for dowencasting (Safe way )
 as!  -> Use for dowencasting
 */

//: Type casting in UIKit
let label = UILabel() as UIView

//: Desgin Class
class Human {
    func introduce() {
        print("hi i am human")
    }
}

//:Desgin subclass
class Korean:Human {
    func SingGangNamStyle() {
        print("Oppa Gangnam Style")
    }
}

let pk = Korean()
pk.introduce()
pk.SingGangNamStyle()

//:Type Casting
let newPk = Korean() as Human
newPk.introduce() //upcasting

class japanese:Human {
    func doNinja() {
        print("shhhhh.....")
    }
}

//: Upcasting with common normal type
var name = "PK" as Any
var number = 20 as Any

var anyArrey = [name,number]

//:Dowencasting always occer After upcasting  (Used for grouping the object )

let koren = Korean()
let japnes = japanese()
//let all = [koren as Human , japnes as Human]

let all:[Human] = [koren , japnes]

for human in all {
    if let korean = human as? Korean {
        koren.SingGangNamStyle()
    }
    
    if let jap = human as? japanese {
        jap.doNinja()
    }
}


//:Practical Type Casting Useg
let loginButton = UIButton()
let loginMessage = UILabel()
let loginView = UIView()

let uicomponent = [loginButton, loginMessage, loginView]

for component in uicomponent {
    if let but = component as? UIButton {
        //do stuff
    }
    
    if let mess = component as? UILabel {
        // do stuff 
    }
}
