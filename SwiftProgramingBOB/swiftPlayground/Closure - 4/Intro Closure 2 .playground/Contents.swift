import UIKit

var str = "Hello, playground"

var addWithCloserOne:(Int,Int) -> Int = { (numberOne:Int,numberTwo:Int) in
    return numberOne + numberTwo
}

var addWithCloserTwo = { (numberOne:Int,numberTwo:Int) in
    return numberOne + numberTwo
}

var returnStringOne: () -> String = { () in
    return "hello"
}

var returnStringTwo: () -> String = {
    return "hello"
}

//Return a closer indirectly
func returnCloser() -> ((Int,Int) -> Int) {
    return addWithCloserOne
}

let returnedCloser = returnCloser()
returnedCloser(10,10)
let retuendCloserTwo = returnCloser()(20,10)

//Return a closer directly

func returnCloserDirectly() -> ((Int,Int) -> Int) {
    return { (numberOne,numberTwo) in numberOne + numberTwo }
}

func returnCloserDirectlyTwo() -> ((Int,Int) -> Int) {
    return {$0 + $1}
}

func returnCloserDirectlyThree() -> ((Int,Int) -> Int) {
    return { (numberOne,numberTwo) in numberOne + numberTwo }
}

//pass closure indirectly
func insertClosureBlock(closureBlock:() ->(String)) -> String {
    return closureBlock()
}

let closerValu = insertClosureBlock(closureBlock: returnStringOne)
insertClosureBlock(closureBlock: { return "hi"})


let example = Array(1...100).filter { $0 % 2 == 0}
print(example)
