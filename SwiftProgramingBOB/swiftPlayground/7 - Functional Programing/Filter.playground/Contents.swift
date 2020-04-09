import UIKit

/*:
 ### Filter
 
 **Problem:** How to get things done with one line code?
 
 ---
 
 */
//: > Most people use swift functions without knowing the behind implimentation
var evens:[Int] = []

for i in 1...10 {
    if i % 2 == 0 {
        evens.append(i)
    }
}
Array(1...10).filter { (number) -> Bool in
    number % 2 == 0
}



let recentGrade = ["A", "A", "A", "A", "B", "C"]
var happyGrade = [String]()
for grade in recentGrade {
    if grade == "A" {
        happyGrade.append(grade)
    }
}
print(happyGrade)


//: Desgin A Closure
var isMomHappy: (String) -> Bool = { (grade) in
    return grade == "A"
}
var isMomHappyTwo = {$0 == "A"}

isMomHappy("A")
isMomHappy("B")
isMomHappyTwo("A")
isMomHappyTwo("B")

//: Create function that take closure
func simpleStringFilter(grades:[String], operation:(String) -> (Bool)) -> [String] {
    var happyGrade = [String]()
    for grade in grades {
        if operation(grade) {
            happyGrade.append(grade)
        }
    }
    return happyGrade
}

let newGrade = simpleStringFilter(grades: recentGrade, operation: isMomHappy)

//: ### Desgin Genric Filter

func myFilter<T>(arrey:[T], operation:(T) -> (Bool)) -> [T] {
    var results = [T]()
    for element in arrey {
        if operation(element) {
            results.append(element)
        }
    }
    return results
}
let genricGrade = myFilter(arrey: recentGrade) { (grade) -> (Bool) in
    return grade == "A"
}

//: ### Purest Form
extension Array {
    func myFilter(operation:(Element) -> (Bool)) -> [Element] {
        var results = [Element]()
        for element in self {
            if operation(element) {
                results.append(element)
            }
        }
        return results
    }
}

let result = Array(0...100).myFilter { (number) -> (Bool) in
    return number % 2 == 0
}


print("Working fine")
