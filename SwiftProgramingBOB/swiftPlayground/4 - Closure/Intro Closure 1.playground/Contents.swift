import UIKit

var str = "Hello, playground"

//function to add two number
func addTwoNumber(numberOne:Int,numberTwo:Int) -> Int {
    return numberOne + numberTwo
}
var total = addTwoNumber(numberOne: 40, numberTwo: 40)

//CLOSURE EXAMPLE 1
var addClosureTypeOne:(Int,Int) -> Int = { (numberOne:Int,numberTwo:Int) in
    return numberOne+numberTwo
}

var addClosureTypeTwo = { (numberOne:Int,numberTwo:Int) in
    return numberOne + numberTwo
}

var addCloserTypeThree = { (numberOne:Int,numberTwo:Int) in
     numberOne + numberTwo
}

var addClosureFour:(Int,Int) -> Int = { $0 + $1}

//addClosureFour(5,4)



func callString () -> String {
    return "hi, I am a function"
}

//CLOSURE EXAMPLE 2

var callStringWithClosureTypeOne: () -> String = { () in
    return "Hi, i am a closure type 1"
}

var callStringWithClosureTypetwo: () -> String = { () in
     "Hi, i am a closure type 2"
}

var callStringWithClosureTypethree: () -> String = {"Hi, i am a closure type 3"}

var callStringWithClosureTypefour = { "Hi, i am a closure type 4"}

var callStringWithClosureTypeFive = { () in
     "Hi, i am a closure type 5"
}

//let result = callStringWithClosureTypeFive()


