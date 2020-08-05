
/*:
# Advanced Dictionary
___
*/

//: ### Past Code
var myInfo = ["name":"PK", "Age":"14"]
let name = myInfo["name"] //Optional(PK)

//:## Default value for dictionary
let footSize = myInfo["footSize", default: "No Value"]

//: ### Practical Use: Everywhere for accessing dictionary value

//: ## Grouping a Sequence into the dictionary
let contact = ["Pk","Pan", "Anju", "Ladu", "Sac", "Pooja"]

let groupedByKey = Dictionary(grouping: contact, by: {_ in return "Key" })
print(groupedByKey)

let grouped = Dictionary(grouping: contact, by: {$0.first! })
print(grouped)


//: ## Remove Duplicate
let duplicate = [("a",1),("b",7),("a",3),("c",9),("d",4),]
let myLetter = Dictionary(duplicate) { (latter, number)  in latter}
print("\n", myLetter)


//:## Zip: Dictionary Like
let words = ["One","Two","three","Four"]
let numbers = 1...words.count

for (word,number) in zip(words, numbers) {
    print("\(word) : \(number)")
}

//: ZIP TO DICTIONARY
let friends = ["Pk","Pan", "Anju", "Ladu", "Sac", "Pooja"]
let friendWithValue = Dictionary(uniqueKeysWithValues: zip(1..., friends))
print("\n", friendWithValue)


//: ## Functional Programing with set
let set:Set = [1,2,3,4,5]
let filterdSet = set.filter { (value) -> Bool in
    return value % 2 == 0
}


//: ## Functional Programing with Dictionary
let dictionary = ["name" : "pan", "hairColour": "black", "Age": "15"]
let filterd = dictionary.filter { (key,value) -> Bool in
    return key == "name"
}
print("\n", filterd)


let mapped = dictionary.mapValues { (value) -> String in
    return value.uppercased()
}
print("\n", mapped)
