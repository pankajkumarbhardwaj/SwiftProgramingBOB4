import UIKit
import PlaygroundSupport
/*:
 ### The Enum Basic
 
 **Problem:**  Let,s Review
 
 By the way enum is nothing more than providing a blueprint ranges like classes struct right.
 ___
 There Are three type of Enum :-
 1. Basic Enumerations
 2. Enumeration that have raw value
 3. Enumerations that have associated value
 */

enum Compass {
    case north
    case south
    case east
    case west
}

enum planet {
    case mercury, venus, earth, marsh, jupiter, saturn, uranus, neptune
}


//: Create An Object of Enum
let earth = planet.earth

switch earth {
case .earth:
    print("Mostly Safe")
default:
    print("Unsafe")
}


/*:
 ### Raw Value
 Swift supports the following type for the value of enum:
 - Integer
 - Float
 - String
 - Bool
 */


//: Raw Value : String
enum Fruit:String {
    case apple
    case banana
    case orange
    case graps
}
let stringValueFromApple = Fruit.apple.rawValue

//: Raw Value : Int

enum WeekDays:Int {
    case mon, tue, wed, thu, fri=10, sat, sun
}
let intValueFromMonday = WeekDays.mon.rawValue
let intValueFromthursday = WeekDays.thu.rawValue
let intValueFromsaturday = WeekDays.sat.rawValue
//: Inetilization Through Raw Value
let day = WeekDays(rawValue: 10)
if let someDay = WeekDays(rawValue: 10) {
    switch someDay {
    case .sat, .sun:
        print("WeekEnd")
    default:
        print("WeekDays")
    }
}else {
    print("No such day exist")
}



/*:
### Associate Value
Example from swift document:
*/
enum BarCode {
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}

let upcCode = BarCode.upc(4, 5, 6, 7)
let myQRCode = BarCode.qrCode("XYZ")


//:  wrong Approch
if case let BarCode.qrCode(value) = myQRCode {
    print("This is QR Code : Value", value)
}
if case let BarCode.upc(numberSystem, manufacture, product, check) = upcCode {
    print("numberSystem", numberSystem)
    print("manufacture", manufacture)
    print("product", product)
    print("check", check)
}
//This is wrong Approch


//: The Right Approch Is :-
let code = myQRCode //Or May Be UPC

switch code {
case .upc(let numberSystem, let manufacture, let product, let check):
    print("numberSystem", numberSystem)
    print("manufacture", manufacture)
    print("product", product)
    print("check", check)
case .qrCode(let productCode):
    print(("This is QR Code : Value", productCode))
@unknown default:
    print("Not A Valid Code")
}

//: We Can Also Use With Single let
switch code {
case let .upc(numberSystem, manufacture, product, check):
    print("numberSystem", numberSystem)
    print("manufacture", manufacture)
    print("product", product)
    print("check", check)
case let .qrCode( productCode):
    print(("This is QR Code : Value", productCode))
@unknown default:
    print("Not A Valid Code")
}




