  
import UIKit
import PlaygroundSupport

/*:
# Static And Mutating Method with self
___
*/
//: ## Practical with StoryBoard
  
  enum Storyboard:String {
    case profile
    case setting
    case newsFeed
    
    var identifier:String {
        return self.rawValue
    }
  }

let profile =  Storyboard.profile
profile.rawValue

//: ## API Guideline Goal
  
  func describeStoryboard(storyBoard:Storyboard) -> String {
    switch storyBoard {
    case .profile:
        return "\(storyBoard.identifier): Profile picture "
    case .setting:
        return "\(storyBoard.identifier): Logout "
    case .newsFeed:
        return "\(storyBoard.identifier): Videos "
    }
  }


  describeStoryboard(storyBoard: .profile)

//: ## Mutating Method
  enum MealProcess: String {
    case breakfast, lunch, dinner
    
    var description: String {
        return self.rawValue
    }
    
//:  Use Mutating B/S Enum is Value Type
    mutating func nextMeal() {
        switch self {
        case .breakfast:
            self = .lunch
            print("I Had a Nice Lunch")
        case .lunch:
            self = .dinner
            print("I Had a Nice Dinner")
        case .dinner:
            self = .breakfast
            print("I Had a Nice Breakfast")
        }
    }
    
  }

  var currentMeal = MealProcess.breakfast
  currentMeal.nextMeal()

//: ##  Static Method ()
  
//: Not A Good Approach
  
//  enum AppleDevice {
//    case iWatch, iPhone, iMac, macPro
//
//    static func getAppleDevice(name:String) -> AppleDevice? {
//        switch name {
//        case "iWatch":
//            return .iWatch
//        case "iPhone":
//            return .iPhone
//        case "iMac":
//            return .iMac
//        case "macPro":
//            return .macPro
//        default:
//            return nil
//        }
//    }
//  }
  
//: Good Approach
  enum AppleDevice:String {
    case iWatch, iPhone, iMac, macPro

    static func getProduct(name:String) -> AppleDevice? {
        return AppleDevice(rawValue: name)
    }

    static func getAppleDevice(enterName:String) -> AppleDevice? {
        switch enterName {
            case "iWatch", "iPhone", "iMac", "macPro":
                return getProduct(name: enterName)
        default:
            return nil
        }
    }

  }

  let userProduct = AppleDevice.getAppleDevice(enterName:"iWatch" )


//: ##  Custom Init
  enum AppleDevices:String {
     case iWatch, iPhone, iMac, macPro
     
    init?(name: String) {
        if name == "iWatch" {
            self = .iWatch
        }else {
            return nil
        }
    }
     
   }
  
  AppleDevices(name: "abc")
  
  
  enum IntCatagory {
    case small
    case medium
    case big
    case weird
    
    init(number:Int) {
        switch number {
        case 0..<1000:
            self = .small
        case 1000..<2000:
            self = .medium
        case 2000..<3000:
            self = .big
        default:
            self = .weird
        }
    }
    
  }
  
  
//: ### Prctical Case
  
  enum HttpError:String {
    case code400 = ""
    case code401 = "Bad Request"
    case code402 = "UnAuthorized"
    case code403 = "Forbidden"
    case code404 = "Page Not Found"
    
    var description : String {
        return self.rawValue
    }
    
  }
  HttpError.code400.description
  
  enum CellType:String {
    case cellA
    case cellB
    case cellC
    case cellD
    case cellE
    
    var name : String {
        return self.rawValue
    }
    
  }
  
  
  
  enum NavigationTheme {
    case placId
    case warning
    case danger
    
    var barTintColour:UIColor {
        switch self {
        case .placId:
            return UIColor.clear
        case .warning:
            return UIColor.blue
        case .danger:
            return UIColor.red
        }
    }
  }
  
  extension NavigationTheme {
    init(number:Int) {
        switch number {
        case 0..<10:
            self = .placId
        case 10..<20:
            self = .warning
        default:
            self = .danger
        }
    }
  }
  
  let currentColour = NavigationTheme.init(number: 10).barTintColour
  

print("Working Properly")
