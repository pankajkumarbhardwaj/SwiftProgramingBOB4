import UIKit

var str = "Hello, playground"


let rendom: Any = [1, "string",["123"]]

protocol EastAsianable {
    var useChopstick:Bool {get}
    var origin:String {get}
}

extension EastAsianable {
    var useChopstick : Bool {
        return true
    }
}

//:Create blue print
struct Korean:EastAsianable {
    var origin:String = "Korea"
}

class japanese:EastAsianable {
    var origin:String = "japan"
}

struct chinese:EastAsianable {
    var origin: String = "china"
}


let eastAsians:[EastAsianable] = [Korean(),japanese(),chinese()]

for eastAsian in eastAsians  {
    print("I am from \(eastAsian.origin)")
}


//:Example 2
import UIKit
//:Combine uilabel, image view, loop through to change colour, animation and so on
protocol uniqueView {
    
}
extension UIImageView:uniqueView {
    
}

extension UILabel:uniqueView {
    
}



//:Protocol Met Generics

protocol sleekable {
    var price:String {get}
}

struct Diamond:sleekable {
    var price: String = "very high"
}

struct Ruby:sleekable {
    var price: String = "High"
}

struct Glass:sleekable {
    var price: String = "Dirt cheap"
}


func stateThePrice<T:sleekable> (enterGem:T) {
    print("i am expensive.In fact , i 'm \(enterGem.price)")
}

stateThePrice(enterGem:Glass())
