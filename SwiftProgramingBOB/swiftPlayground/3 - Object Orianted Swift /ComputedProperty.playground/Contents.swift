//: A UIKit based Playground for presenting user interface
  
import UIKit
import Foundation

/*:
## Problem
### Do we have make functions to calculate something?
*/

func getDiameter(radius:Double) -> Double {
    return radius*2
}

func getRadius(diameter:Double) -> Double {
    return diameter/2
}

/*:
 ### Introduction To Computed Property
 > computed = calculated
 
 ### Getable Property
 > Create a variable that only can be read. it can not be modified.
 */

class NumberClass {
    var readableNumber:Double  {
        get {
            return 666
        }
    }
    var readableNumberTwo:Double {
        return 888
    }
}
NumberClass().readableNumber
NumberClass().readableNumberTwo
//NumberClass().readableNumber = 888 //Show error b/s it is a get only property



//: ### Setable Property
var radius:Double = 10

var diameter:Double {
    get {
        return radius * 2
    }
    set {
        radius = newValue/2
    }
}
diameter = 30
diameter
radius

//: Finding Area
var side:Double = 100

var area:Double {
    get {
        return side * side
    }
    set(newArea) {
        side = sqrt(newArea)
    }
    
}
area = 9
side
