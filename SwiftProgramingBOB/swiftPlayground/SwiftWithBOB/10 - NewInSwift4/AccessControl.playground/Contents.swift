
import UIKit
/*:
# Access Control
___
 Reduce Indexing/compilation time while building an app 
 
## 5 Level of Access Control :-
1. private (Most Secure)
2. fileprivate
3. internal
4. public
5. open (Least Secure)
*/

//:Ex-1 Game Application
class Game {
    private var number = 0
    
    var score:Int {
        return number
    }
    
    func increaseNumberByOne() {
        number += 1
    }
}

//:Ex-2 Singleton
class AccountManager {
    static let shared = AccountManager()
    var userInfo = (ID:"pankajp802", Passward:"1234")
    private init () {}
    
}

//: Private Setter Only
class Human {
    private(set) var Score:Int = 0
    func increaseNumberByOne() {
        Score += 1
    }
}


//: ## File Private
//: We can acess in same file

//: ## Internal
//: Internal Allow to  acess in same Model (Like UIKit)


//: ## open
//: You Can Customize Or Override Or can create subclass
class MyViewController:UIViewController {
    override func viewDidLoad() {
        
    }
}

//: ## Public
// public func a() {}
// open func b() {}

// override func a() {} //Error
// override func b() {} //sucess
