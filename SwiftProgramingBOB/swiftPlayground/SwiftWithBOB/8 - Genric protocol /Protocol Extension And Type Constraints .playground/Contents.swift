import UIKit


/*:
 ## Problem: Limit The Scope Of Protocol Extension with Where and Self
*/

//: Generic Function Review
class LOL {}

func addLOLClassOnly<T:LOL> (arrey:[T]) {}

addLOLClassOnly(arrey: [LOL()])


//: Degin Protocol
protocol GenricProtocol {
    associatedtype myType
}

class someClass:GenricProtocol {
    typealias myType = String
}

struct someStruct:GenricProtocol {
    typealias myType = Int
}

extension GenricProtocol where myType == String {
    func introduce() {
        print("Hey, my name is pankaj")
    }
}
//: Note: This method is acessible for For string only

extension GenricProtocol where Self == someStruct {
    func saySomthing() {
        print("I am some struct")
    }
}

someStruct().saySomthing()
//: Note: This method is acessible for For Type some struct only

//:Degin Pre-Defined Associate Type
//:Dont do this
protocol FamilyProtocol {
    associatedtype familyType = Int
    var familyMember: [familyType] {get set}
}

struct numberFamily:FamilyProtocol {
   var familyMember: [Int] = [1,2,3,4]
}

struct stringFamily:FamilyProtocol {
    var familyMember: [String] = ["Pk"]
}
