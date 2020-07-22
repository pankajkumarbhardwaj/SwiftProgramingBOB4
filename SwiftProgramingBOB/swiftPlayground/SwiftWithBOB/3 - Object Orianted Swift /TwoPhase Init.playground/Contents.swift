//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

//: ## Two Phase Inetilization 
struct NuclearRocket {
    var meters:Double
    var liters:Double
    
    init(meters:Double,liters:Double ) {
        self.meters =  meters
        self.liters = liters
    }
    
    init(ft:Double, gallon:Double ) {
        let convertedMeater = ft/3.28
        let convertedLitters = gallon * 3.78
        self.init(meters:convertedMeater, liters:convertedLitters)
    }
}

var rocket = NuclearRocket(ft: 300, gallon: 2)
rocket.liters
rocket.meters

var newRocket = NuclearRocket(meters: 5, liters: 10)
newRocket.liters
newRocket.meters


print("Running Sucessfully")
