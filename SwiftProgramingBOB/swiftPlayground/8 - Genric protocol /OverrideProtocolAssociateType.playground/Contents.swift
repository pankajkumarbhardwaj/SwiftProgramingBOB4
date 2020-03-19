import UIKit

/*:
 ## How to override Typed-defined protocol
*/

//:Degin Protocol

protocol familyProtocol {
    associatedtype familyType
    var familyMember:[familyType] {get set}
}

//:Degin Struct
struct numberFamily: familyProtocol {
    var familyMember: [Int] = [1,2,3,4]
}

let numFamily = numberFamily() //Family type is Int

//:Override associate type Directly

struct NormalFamily:familyProtocol {
    typealias familyType = String
    var familyMember: [String] = ["Pk"] //Family type is String
}

//:How to apply genric protocol with genric
struct leeFamily<T> :familyProtocol {
    var familyMember: [T] = [] //familyType --> T
}

let family = leeFamily(familyMember: ["PK", "Sac"])
// 1. T become string ["PK", "Sac"]
// 2. familyType now become string based on T 
