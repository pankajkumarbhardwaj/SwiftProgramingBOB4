
  
import UIKit
import PlaygroundSupport

/*:
# Genric Enum
___
*/

enum Information<T,U> {
    case name(T)
    case website(T)
    case age(U)
}

//Information.name("Pankaj")
//T is string, but U ?
Information<String,Int>.age(20)

//:Optional with enum
let quickOptionals: String? = "pk"

let explicitOptional = Optional("pk")
explicitOptional!



enum myOptional<T> {
    case none //nil
    case some(T)
    
    init(_ anyValue: T) {
        self = .some(anyValue)
    }
}

myOptional("CustomOptional")
