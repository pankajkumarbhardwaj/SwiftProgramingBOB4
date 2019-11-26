import UIKit

/*:
 ## Problem: Why delegate should be weak var
*/
protocol sendDataDelegate:class{}

class SendingVC {
    weak var delegate:sendDataDelegate?
    
    deinit {
        print("Delegator Gone")
    }
}

class RecivingVC:sendDataDelegate {
    lazy var sendingvc:SendingVC = {
        let vc = SendingVC()
        vc.delegate = self
        return vc
    }()
    
    deinit {
        print("delegate gone")
    }
}


var receivingVc:RecivingVC? = RecivingVC()
receivingVc?.sendingvc
receivingVc = nil



/*:
 * Declare delegate property always weak (if delegate property is weak then protocol must be confirm the class protocol like(  protocol sendDataDelegate:class{} )
 
 */
