
  
import UIKit
import PlaygroundSupport


/*:
 ## Introduction to Defer Statement
  * put off (An action or event) to later time; Postpone. In swift, it will execute a block of code until the current scope (Loop, Method) exits.
 */

func simpleDefer() {
    defer {
        print("simpleDefer is Excute sucessfully")
    }
    print("hi I am PK")
}

simpleDefer()


func simpleDeferTwo() -> Int {
    var number = 1
    defer {
        number = number + 1
        print("simpleDeferTwo is Excute sucessfully")
    }
    return number
}
print(simpleDeferTwo())

print("\n *********** inoout in Swift Started *********** \n")

//: ## inout In Swift

var myConstant:Int = 2
var myConstantTwo:Int = 4

func usingInout(number: inout Int) {
    number += 2
}

usingInout(number: &myConstant)
print(myConstant)

usingInout(number: &myConstantTwo)
print(myConstantTwo)



class Employee {
    var name : String
    var age : Int
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}

func changeEmployeeData(emp : Employee){
    emp.name = "Suneet"
    emp.age = 25
}

let employee = Employee(name: "Random", age : 10)

print(employee.name)   //Random
print(employee.age)    //10

changeEmployeeData(emp : employee)

print(employee.name)    //Suneet
print(employee.age)     //25


print("employee Instance Name:", employee.name, "Age:" ,employee.age)
