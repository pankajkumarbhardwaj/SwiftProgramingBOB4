import UIKit

/*:
##PROBLEM:
* HOW TO USE CAPTURE LISTS TO PREVENT RETAIN CYCLE IN CLOSURE
* WHEN TO USE UNOWNED
*/

class BobClass{
    var bobClosure:(() -> ())?
    var name:String = "Bob"
    
    init() {
        bobClosure = { [weak self] in
            
            //print("Bob the devloper") // its not create retain cycle
            
            //print("\(self.name) the devloper") // its create retain cycle b/s closure has refrence of this class without ([weak self] in)
            
            //print("\(self?.name) the devloper") // its wrong approch because self instance may be nil
            
            //SO SOLUTION IS ADD [weak self] in THE CLOSERE AND DO
            
            guard let object = self else {return}
            print("\(object.name) the devloper") // its wrong approch because self instance may be nil
        }
    }
    
    
    deinit {
        print("Bob class gone")
    }
}

//var bobClass:BobClass? = BobClass()
//bobClass?.bobClosure?()
//bobClass = nil

//ANOTHER EXAMPLE FOR UNOWNED

class Owner{
    var card:Craditcard?
    deinit {
        print("owner gone")
    }
}

class Craditcard {
    unowned let owner:Owner
    init(enterOwner:Owner) {
        self.owner = enterOwner
    }
    deinit {
        print("Cradit card gone")
    }
}

var bob:Owner? = Owner()
let myCard = Craditcard(enterOwner: bob!)

bob?.card = myCard

bob = nil
//myCard.owner //crash
