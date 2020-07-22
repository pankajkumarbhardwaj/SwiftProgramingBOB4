import UIKit
/*:
 # Introduction to Associated Type
 ## Problem: How to create genric protocol
 */

/*:
 ## Note:
 ### 1 Rule: Type must be defind before compiled
 */

//:Degin Genric Struct
struct GenricStruct<T> {
    var property: T?
}

let explictely = GenricStruct<Bool>()
//T is Bool

let implicitly = GenricStruct(property:"Pankaj")
//T is string

//:Degin normal protocol
protocol NormalProtocol {
    var property:String {get set}
}

//:Degin normal class
class NormalClass:NormalProtocol {
    var property: String = "Pankaj"
}

/*:
 ## Introduction to genric protocol
 */
protocol GenricProtocol {
    associatedtype mytype
    var anyProperty:mytype {get set}
}

//: Define Associated Type
struct someStruct:GenricProtocol {
    var anyProperty = 1996 //myType : Int
}

struct newStruct:GenricProtocol {
    var anyProperty = "Pankaj" //myType : String
}
//: Description :- In protocol typealis change to associatedType

//: Define Associated Type with type alias
struct ExplicitStruct:GenricProtocol {
    typealias mytype = Bool
    var anyProperty: Bool = true
}
