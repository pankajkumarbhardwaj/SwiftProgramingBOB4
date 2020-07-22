
import UIKit
import PlaygroundSupport

struct User:Codable {
    var name:String
    var loginMethods:[LoginMethods]
    var numberOfFriend:Int
    
    enum LoginMethods:String, Codable {
        case facebook, linkedin, instagram, twitter
    }
}

struct AnotherUser:Codable {
    var fullName:String
    var loginMethods:[LoginMethods]
    var numberOfFriend:Int
    
    enum LoginMethods:String, Codable {
        case facebook, linkedin, instagram, twitter
    }
}


//Create Object
let pk = User(name:"pk",loginMethods:[.facebook, .instagram], numberOfFriend:4)


/*:
 ### Encode (Object to Jason)
 Create Encoder
 */
let jasonEncoder = JSONEncoder()
var data:Data?

jasonEncoder.outputFormatting = .prettyPrinted

do {
    let jasonData = try jasonEncoder.encode(pk)
    data = jasonData
    if let jasonString = String(data: jasonData, encoding: .utf8) {
        print("pk : " + jasonString)
    }
}


/*:
### Decode (Jason to Object)
Create Decoder
*/

let jasonDecoder = JSONDecoder()

//:Decode Data


do {
    let pkNew = try jasonDecoder.decode(User.self, from: data!)
    print("Name", pkNew.name)
    print(pkNew.numberOfFriend)
}catch (let error) {
    print(error)
}


//:Meaning Of Self
//: If you know the type you can inetilize something so you can the user type and they can go in a method comes along with any method


let userType = User.self
userType.init(name: "PKTest", loginMethods: [.facebook], numberOfFriend: 2)
 
/*:
 ### Other Example
 */
struct Geek:Codable {
    let stackOverFlowId:String
    let name:String
    let platform:String
}

//: Example 1

let geek = """
{
"stackOverFlowId":"pankajKumarBhardwaj",
"name":"PK",
"platform":"IOS"
}
""".data(using: .utf8) //Our data in native (JSON) Format


do {
    let geekPK = try JSONDecoder().decode(Geek.self, from: geek!)
    print(geekPK)
}catch (let error){
    print("Data Decoding Error",error )
}

//: Example 2
let geeks = """
[{
"stackOverFlowId":"pankajKumarBhardwaj",
"name":"PK",
"platform":"IOS"
},
{
"stackOverFlowId":"Jayesh",
"name":"jd",
"platform":"IOS"
},
{
"stackOverFlowId":"Rustom",
"name":"RK",
"platform":"Android"
}
]
""".data(using: .utf8) //Our data in native (JSON) Format

do {
    let devlopers = try JSONDecoder().decode([Geek].self, from: geeks!)
    devlopers.forEach { (devl) in
        print(devl)
    }
}catch (let error){
    print("Data Decoding Error",error )
}



//: Example 3
let geeksDict = """
{
"1": {
"stackOverFlowId":"pankajKumarBhardwaj",
"name":"PK",
"platform":"IOS"
},
"2": {
"stackOverFlowId":"Jayesh",
"name":"jd",
"platform":"IOS"
},
"3": {
"stackOverFlowId":"Rustom",
"name":"RK",
"platform":"Android"
}
}
""".data(using: .utf8) //Our data in native (JSON) Format

do {
    let geekDictionarys = try JSONDecoder().decode([String:Geek].self, from: geeksDict!)
    geekDictionarys.forEach {
        print("\($0.key) : \($0.value)")
    }
}

print("Done")
