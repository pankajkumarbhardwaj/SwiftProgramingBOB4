
  
import UIKit
import PlaygroundSupport


/*:
 ### Introduction to Defer Statement
  * put off (An action or event) to later time; Postpone. In swift, it will execute a block of code until the current scope (Loop, Method) exits.
 */

func simpleDefer() {
    defer {
        print("simpleDefer is Excute sucessfully")
    }
    print("hi I am PK")
}

simpleDefer()
