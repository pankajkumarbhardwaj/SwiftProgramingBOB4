import UIKit

/*:
 ## ESCAPING Closure
*/
var closureBlock:[() -> Void] = []

func funcWithClosure(closure:@escaping () -> Void) {
    closureBlock.append(closure)
    print("funcWithClosure Done")
}
/*:
* Note:If the closure can be executed after the function finishes == @escaping
*/

//:Scenario 2

import Foundation
func funcWithNetworkingClosure(closure:@escaping () -> Void) {
    DispatchQueue.global().async {
        closure() // Ex Dowenloading..
    }
    print("funcWithNetworkingClosure Done")
}

funcWithNetworkingClosure {
    for _ in 1...10 {
        print("Download..")
    }
}


//:Scenario 3

class Normal {
    var name = "Pankaj"

    func normalFunctionWithClosure(closure: (String) -> Void) {
        closure(self.name)
        print("normalFunctionWithClosure Done")
    }
}

Normal().normalFunctionWithClosure { (MyName) in
    print(MyName)
}

/*:
* By default normal Function/Closure are non escaping

### BENIFITS OF NON ESCAPING:
* There is no retain cycle for non-escaping
* You may use Self without worrying about memory leaks.
* Performence and the ability for the compiler to optimize
*/

/*:
 ### AUTO CLOSURE
 */

//func checkIdCard(hasCard:() -> Bool) {
//    if hasCard() {
//        print("you have a id card")
//    }
//}
//
//checkIdCard { () -> Bool in
//     true
//}
//
//
//func checkIdCardWithAutoclosure(hasCard: @autoclosure () -> Bool) {
//    if hasCard() {
//        print("you have a id card")
//    }
//}
//
//checkIdCardWithAutoclosure(hasCard: true) // its tooo easy to call
//
/*:
 ### WHERE TO USE AUTO CLOSURE
* When there is no parameter and you are simply returning one thing it can be string,bool or int ...
 */

//:LAZY INIT WITH CAPTURE
//class BobGreet {
//    var name = "Bob the devloper"
//    lazy var grettings:String = {
//        return "Hello \(self.name)"
//    }()
//
//    deinit {
//        print("BobGreet gone ")
//    }
//}
//
//var bobgreet:BobGreet? = BobGreet()
//bobgreet?.grettings
//bobgreet = nil
//

//: WITH LAZY VAR IT NON ESCAPING BY DEFAULT

