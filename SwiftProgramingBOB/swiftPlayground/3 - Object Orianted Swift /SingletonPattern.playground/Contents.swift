//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*:
## Singlton Pattern
 > A singolton is an object which is instantiated exactly once.
*/

class AccountManager {
    var userInfo = (Id:"Pankaj" , passward:"123456")
    
    private init () {
        print("I Am Created")
    }
    
    static let shared = AccountManager()
    
    func network () {
        
    }
}

AccountManager.shared.userInfo.Id
AccountManager.shared.userInfo.passward

AccountManager.shared.userInfo.passward = "654321"
AccountManager.shared.userInfo.passward
