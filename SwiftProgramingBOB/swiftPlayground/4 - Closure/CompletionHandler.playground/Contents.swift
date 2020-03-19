import UIKit

var str = "Hello, playground"
/*:
 ### Completion handler
* Do something when somthing has been done.
* Notify the dowenlods has been completed
* Animations
*/

import UIKit

let firstVC = UIViewController()
let secondVC = UIViewController()

//firstVC.present(secondVC, animated: true, completion: nil)
//firstVC.present(secondVC, animated: true) {
//    print("Done")
//}


//:DESIGN COMPLETION HANDLER BLOCK

//let myHandlerBlock:(Bool) -> Void = { (isSucess:Bool) in
//    if isSucess {
//        print("The dowenlod is done")
//    }
//}
//
let handlerBlock:(Bool) -> Void = {
    if $0 {
        print("Dowenlod has been done.")
    }
}

//myHandlerBlock(true)

//:Degin function
func dowenloadingImage(CompletionBlock:(Bool) -> Void) {
    for _ in 1...10 {
        print("Downloading..")
    }
    CompletionBlock(true)
}
//:Pass closure Indirectally
dowenloadingImage(CompletionBlock: handlerBlock)

//:Pass closure Directally

dowenloadingImage { (isSucess) in
    if isSucess {
        print("Done")
    }
}



//:ANOTHER EXAMPLE
let handler:([String]) -> Void = { (array) in
    print("Done Working, \(array)")
    //Compresh the image
    //Add colour to the image
    //Resize
}

func workSuperHard(doneStuffBlock:([String]) -> Void) {
    for _ in 1...10 {
        print("Performing..")
    }
    doneStuffBlock(["image1","image2","image3","image4"])
}
//:Pass closure Indirectally
workSuperHard(doneStuffBlock: handler)

workSuperHard { (Images:[String]) in
    print("Done Working with directly, \(Images)")
}
