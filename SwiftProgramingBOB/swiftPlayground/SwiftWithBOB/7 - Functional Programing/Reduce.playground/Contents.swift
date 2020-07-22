//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*:
## Reduce
### Problem: Combine all into one
*/

//: ### Imeprative / Non-Functional
//: Addition
var numberOne = Int()
for number in 1...10 {
    numberOne += number
}
numberOne

//: Substraction
var numberTwo = Int()
for number in 1...10 {
    numberTwo -= number
}
numberTwo

//: ### Declarative / Functional Programing
let added = Array(1...10).reduce(0) {$0 + $1} // 55
let subtract = Array(1...10).reduce(0) {$0 - $1} // -55
 
//: Lets  find out

func myReduce(seed:Int, numbers:[Int], operation:(Int,Int) -> Int) {
    var current = seed
    for number in numbers {
        current = operation(current,number)
    }
}

myReduce(seed: 0, numbers: Array(1...10)) { (numOne, numTwo) -> Int in
    return numOne + numTwo
}

myReduce(seed: 0, numbers: Array(0...10)) {$0 + $1}

//:Max number

let maxNumber = Array(1...10).reduce(0) { (current, number) -> Int in
    return max(current, number)
}

let maxNumberTwo = Array(1...10).reduce(0) { max($0, $1)}

//: The Purest Form
extension Array {
    func reduce(seed:Element, operation:(Element,Element) -> Element) -> Element {
        var current = seed
        for item in self {
            current = operation(current, item)
        }
        return current
    }
}


let myArrey = ["PK", "Anju", "Ladu"]
let sentence = myArrey.reduce(seed: "Names: ") { (first, next) -> String in
    return first + " " + next
}
print(sentence)

//:Map function
let lowerCase = myArrey.map { (name) -> String in
    return name.lowercased()
}
print(lowerCase)

//:Multiple function
let lowerNames = myArrey.map {$0.lowercased()}.reduce("Names: ") { "\($0) " + $1 }
print(lowerNames)
