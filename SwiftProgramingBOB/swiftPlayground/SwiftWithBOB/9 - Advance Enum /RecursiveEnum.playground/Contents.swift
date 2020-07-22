
  
import UIKit
import PlaygroundSupport

/*:
# Recursive Enum
___
*/

func recurciveFunction() {
    print("Hi \n")
    recurciveFunction()
}
//recurciveFunction()

indirect enum AirthmaticExpressions {
    case number(Int)
    case addition(AirthmaticExpressions,AirthmaticExpressions)
    case multiplication(AirthmaticExpressions,AirthmaticExpressions)
}

AirthmaticExpressions.number(4)
let additionEnum = AirthmaticExpressions.addition(.number(5), .number(6))


func evaluate(expression:AirthmaticExpressions) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(expression: left) + evaluate(expression: right)
    case let .multiplication(left, right):
        return evaluate(expression: left) * evaluate(expression: right)
    }
}

evaluate(expression: .number(4))
evaluate(expression: .addition(.number(1), .number(2)))
evaluate(expression: additionEnum)

//: Alternative Normal enum
enum Operation {
    case addition(Int,Int)
    case multipication(Int,Int)
    
    var result:Int {
        switch self {
        case let .addition(number1, number2):
            return number1 + number2
        case let .multipication(number1, number2):
            return number1 * number2
        }
    }
}

Operation.addition(4, 4).result


//: Other Alternative

struct StructOperation {
    func addNumber(numberOne:Int, numberTwo:Int) -> Int {
        return numberOne + numberTwo
    }
    
    func multiplyNumber(numberOne:Int, numberTwo:Int) -> Int {
        return numberOne * numberTwo
    }
}


StructOperation().addNumber(numberOne: 5, numberTwo: 5)


//: This is what i would  do

struct MathOperation {
    static let addition: (Int,Int) -> Int = {$0 + $1}
    static let multiplication: (Int,Int) -> Int = {$0 * $1}
}

MathOperation.addition(10,10)
MathOperation.multiplication(10,10)
