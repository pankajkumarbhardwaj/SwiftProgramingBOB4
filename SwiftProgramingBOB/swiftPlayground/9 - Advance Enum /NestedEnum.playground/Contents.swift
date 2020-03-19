//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*:
# Nested Enum
___
*/

enum FutureCourse {
    
    enum LearnSwiftWithPK:String {
        case genricProtocol
        case advanceEnum
        
        var chapterDescription:String {
            return self.rawValue
        }
    }
    
    enum UIkitFundamental:String {
        case coreData
        case noStoryboard
        case cloudComputing
        
        var chapterDescription:String {
            return self.rawValue
        }
    }

}

FutureCourse.LearnSwiftWithPK.genricProtocol.chapterDescription
FutureCourse.UIkitFundamental.noStoryboard.chapterDescription


//:  Use Game Desgin

 struct Devloper {
    enum Department {
        case ios
        case android
        case web
    }
    
    enum Exprience {
        case juniorDevloper
        case Devloper
        case seniorDevloper
    }
    
    let department: Department
    let position: Exprience
}

let Pk = Devloper(department: .ios, position: .seniorDevloper)


//:  Another Game Desgin
 enum Wearable {
    enum Weight:Int {
        case light
        case medium
        case heavy
    }
    
    enum Price:Int {
        case leather
        case iron
        case steel
    }
    
    case armor(weight:Weight, price:Price)
    
    func getDescription() -> String {
        switch self {
        case let .armor(weight,price ) :
            return "You Have Chossen \(weight) And \(price)"
        }
    }
}

let myCloths = Wearable.armor(weight: .heavy, price: .leather)
myCloths.getDescription()


print("Working Properly")
