import UIKit

//:Somewhere in view controller
let numbers = [1,2,3]
var sum = 0

for number in numbers {
    sum += number
}
print("\(sum)")

//:Somewhere in next view controller
let newNumbers = [4,5,6]
var newSum = 0

for number in newNumbers {
    newSum += number
}

print("\(newSum)")


/*:
 ### Note: Functional
 */

func saveFromMadness(elements:[Int]) -> Int {
    var sum = 0
    for number in elements {
        sum += number
    }
    return sum
}
