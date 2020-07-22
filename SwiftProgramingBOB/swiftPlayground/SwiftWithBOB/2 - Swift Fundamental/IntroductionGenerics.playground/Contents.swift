//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport


struct genricFamily<T> {
    var members: [T] = []
    mutating func push(member:T) {
        members.append(member)
    }
}

var myFamily = genricFamily(members: [1,2,3,4,5])
myFamily.push(member: 10)
print(myFamily.members)


extension genricFamily {
    var firstElement: T? {
        if members.isEmpty {
            return nil
        }else {
            return members[0]
        }
    }
}

myFamily.firstElement

//:Type Constraints

class LoL {}
class babyLoL:LoL {}

let example = LoL()

func addLoLClassOnly<T:LoL> (arrey: [T]) {}

addLoLClassOnly(arrey: [example,example])
addLoLClassOnly(arrey: [babyLoL(),babyLoL()])

//addLoLClassOnly(arrey: [1,2,3]) //This will show error


