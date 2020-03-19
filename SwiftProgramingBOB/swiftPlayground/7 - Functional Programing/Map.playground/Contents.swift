import UIKit

var str = "Hello, playground"

/*:
 ## MAP
 ### Problem: [1,2,3,4,5] to [1,4,9,16,25] in one line
 */


var squaredNumber : [Double] = []

var numbers = [1.0,2.0,3.0,4.0,5.0]

//for number in numbers {
//    squaredNumber.append(number * number)
//}

numbers.map { (number) in
    return (number * number)
}

//: Non generic map
func myMap(numbers:[Double], operation:(Double) -> Double) -> [Double] {
    var result:[Double] = []
    for number in numbers {
        let transformValue = operation(number)
        result.append(transformValue)
    }
    return result
}

let result = myMap(numbers: [1.0,2.0,3.0,4.0,5.0]) { (number) -> Double in
    number * number
}

let resultTwo = myMap(numbers: [6.0,7.0,8.0], operation: { $0 * $0})


func sligtelyGenricMap<T> (items:[T], operation:(T) -> T) -> [T] {
    var result:[T] = []
    for item in items {
        result.append(operation(item))
    }
    return result
}

//: ### Ex 1) Lowercase Each element

let upperCase = ["PANKAJ", "SAGAR", "JD"]
func lowerCase (enterString:String) -> String {
    return enterString.lowercased()
}

//: Pass closure Indirectly
let lowerCase = sligtelyGenricMap(items: upperCase, operation: lowerCase(enterString:))
//: Pass closure Directly (Longer Form)
let lowerCaseTwo = sligtelyGenricMap(items: upperCase) { (name) -> String in
    name.lowercased()
}

//: Pass closure Directly (Shorter Form)
let lowerCaseThree = sligtelyGenricMap(items: upperCase, operation: { $0.lowercased() })



//:### Extremely Genric 'Map'
func genricMap<T, U> (items:[T], operaton:(T) -> U) -> [U] {
    var result:[U] = []
    for item in items {
        result.append(operaton(item))
    }
    return result
}

//: ### Ex 2) Convert Number To String

//:Pass closure Indirectly

func convertNumberToString(number:Int) -> String {
    return "Your number is \(number)"
}

let myNumber = [1,2,3,4,5]
let genricResult = genricMap(items: myNumber, operaton: convertNumberToString(number:))

//:Pass closure Directly (Longer form)
let genricResultTwo = genricMap(items: myNumber) { (number) ->  String in
    "Your number is \(number)"
}

//:Pass closure Directly (shorter form)
let genricResultThree = genricMap(items: myNumber, operaton: {"Your number is \(String($0))"})


//: The purest form

extension Array {
    func genricMap<U>( operaton:(Element) -> U) -> [U] {
        var result:[U] = []
        for item in self {
            result.append(operaton(item))
        }
        return result
    }
}

let finalResult = Array(1...10).genricMap(operaton: {$0 * 10})
print(finalResult)
