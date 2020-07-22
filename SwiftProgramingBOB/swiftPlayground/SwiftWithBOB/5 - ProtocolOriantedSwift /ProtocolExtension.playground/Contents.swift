import UIKit

var str = "Hello, playground"


protocol MathGenius {
    func calculateGPA()
}

extension MathGenius {
    func calculateGPA() {
        print("hi i am cool in math")
    }
}

struct pk:MathGenius {}
pk().calculateGPA()

class pkb:MathGenius {}

class pankaj:MathGenius {
    func calculateGPA() {
        print("i have override calculate gpa ")
    }
}

pkb().calculateGPA()
pankaj().calculateGPA()


//:Practical protocol extension
protocol findAreable{
    func calculateArea(side:Double,length:Double) -> String
}

extension findAreable {
    func calculateArea(side:Double,length:Double) -> String {
        let area = side * length
        return "the area is \(area)"
    }
}

struct square:findAreable {}
struct hexa:findAreable {}
square().calculateArea(side: 4, length: 10)
hexa().calculateArea(side: 6, length: 10)
