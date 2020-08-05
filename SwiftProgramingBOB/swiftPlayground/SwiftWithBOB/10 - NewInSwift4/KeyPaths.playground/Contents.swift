

/*:
# Key Paths
___
 Problem: i Am Tired of chaining
*/


struct Devloper {
    var platform:Platform
    var information:Information
}

enum Platform {
    case iOS
    case android
}

struct Information {
    var name, strength, motivation: String
}

let pkInformation = Information(name: "PK", strength: "ChangeTheWorld", motivation: "...")
let kpInformation = Information(name: "KP", strength: "None", motivation: "None")

let pk = Devloper(platform: .iOS, information: pkInformation)
let kp = Devloper(platform: .android, information: kpInformation)

//:## Your Past
pk.information.name //pk
kp.information.name //kp


//: ## Introducing Swift 4 Key Path
let pkPlatform = pk[keyPath: \Devloper.platform] //iOS
let pkName = kp[keyPath: \Devloper.information.name] //pk


//:Store Path
let informationKeypath = \Devloper.information

let pkInfo = pk[keyPath: informationKeypath]
let kpInfo = kp[keyPath: informationKeypath]


//: Appanding Key Path
let nameKeyPath = informationKeypath.appending(path: \.name)
let pkname = pk[keyPath: nameKeyPath]
let kpname = kp[keyPath: nameKeyPath]
