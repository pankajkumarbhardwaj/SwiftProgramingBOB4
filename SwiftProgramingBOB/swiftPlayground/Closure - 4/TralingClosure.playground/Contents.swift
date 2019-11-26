import UIKit

var str = "Hello, playground"

//:PROBLEM: A closure is too long to pass through a function


func trallingClosure (number:Int,closure:() -> Void) {
    print("you have enterd \(number)")
    closure()
}


func helloFunc() -> Void {
    print("hello Function")
}

var helloClosure = {
    print("hello Closure")
}

//:PASS CLOSURE BLOK INDIRECTLY
trallingClosure(number: 100, closure: helloFunc)
trallingClosure(number: 200, closure: helloClosure)


//:PASS CLOSURE BLOK DIRECTLY
trallingClosure(number: 300) {
    print("hello!!!!")
}
/*:
WHEN TO USE TRALLING CLOSURE ?
*/
func trallingClosureTwo(number:Int,closure:(Int) -> (Int)) {
    let newNumber = closure(number)
    print(newNumber)
}

trallingClosureTwo(number: 9) { (numbertwo) -> (Int) in
    numbertwo * numbertwo
}

trallingClosureTwo(number: 8) { (numbertwo) in
    numbertwo * numbertwo
}

trallingClosureTwo(number: 6) {$0 * $0}
