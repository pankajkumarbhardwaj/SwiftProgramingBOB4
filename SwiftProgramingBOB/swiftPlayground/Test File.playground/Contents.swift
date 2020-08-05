import UIKit

let unsortedArrey = [1,2,5,4,7,9,8,6,3]

func shortArreyUsingBubleShort(arrey:[Int]) -> [Int] {
    var finalArrey:[Int] = arrey
    let count = arrey.count - 2
    for i in 0...count {
        for j in 0...(count-i) {
            if finalArrey[j] > finalArrey[j+1] {
                let value = finalArrey[j]
                finalArrey[j] = finalArrey[j + 1]
                finalArrey[j + 1] = value
            }
        }
        print(finalArrey)
    }
    return finalArrey
}

shortArreyUsingBubleShort(arrey: unsortedArrey)
