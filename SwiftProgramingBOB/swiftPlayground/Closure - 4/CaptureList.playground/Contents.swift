import UIKit

var str = "Hello, playground"

var a = 0
var b = 0

let newClosure = {
    print(a,b)
}
newClosure()

var closureArrey:[() -> ()] = []
var i = 0

for  _ in 1...5 {
    closureArrey.append {
        print(i)
    }
    i += 1
}

//: i = 5 at the end thats why all value is 5

closureArrey[0]() //5
closureArrey[1]() //5
closureArrey[2]() //5
closureArrey[3]() //5
closureArrey[4]() //5

/*:
 * this is because closure is Refrence type
*/


/*:
### CAPTURE LIST (DONT REFRENCE, COPY)
*/
var c = 9
var d = 9

let smartClosure:()->() = {[c,d] in
    print(c,d)
}

smartClosure()

c = 10
d = 10
smartClosure()


//:DEGIN CLOSURE ARREY
var smartClosureArrey: [() -> ()] = []
var j = 0

//:append closure
for _ in 1...5 {
    smartClosureArrey.append {[j] in
        print(j)
    }
    
    j += 1
}

smartClosureArrey[0]()
smartClosureArrey[1]()
smartClosureArrey[2]()
smartClosureArrey[3]()
smartClosureArrey[4]()

