  
import UIKit
import PlaygroundSupport

/*:
# Type Property & Method
## Problem: I'm Confused by Static, Final, Class. What are Those?
*/

  
  struct SomeStructure {
    static var storedProperty = "Some Value"
    static var computedProperty:Int {
        get {
            return 120
        }
        set {
            print("You Have To Set To \(newValue)")
        }
    }
    
    static func hello() {
        print("Hello")
    }
  }

  SomeStructure.storedProperty
  SomeStructure.computedProperty
  SomeStructure.hello()

  class GrandParent{
    static var numberOfYearsInMerrige:Int = 30
    
    static func introduce() {
        print("We have been merried for", numberOfYearsInMerrige)
    }
    
    class func introducing() {
        print("We have been merried for", numberOfYearsInMerrige)
    }
    
    final func cantOverride() {
        print("You Cant Change me")
    }
    
  }
  
  GrandParent.introducing()

  GrandParent().cantOverride()
//:  ### Static For Structure And Class For Classes And Almost Same Remaining
//:  ### Static Can not be overidden
  
  class Parent:GrandParent {
    override class func introducing() {
        print("I Am Merried From 5 Years")
    }
    
  }
  
//:  ### Static is basically using for store property And its alternate is enum But static is better for store 
