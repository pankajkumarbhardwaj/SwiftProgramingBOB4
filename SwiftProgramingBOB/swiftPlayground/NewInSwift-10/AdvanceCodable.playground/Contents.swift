//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*:
 ### Problem:JSON File & Blueprint Looking Different
 */

let geek = """
{
"stackOverFlowId":"pankajKumarBhardwaj",
"name":"PK",
"platform":"IOS"
}
""".data(using: .utf8) //Our data in native (JSON) Format


struct Geek:Codable {
    let userName:String
    let name:String
    let platform:String
    
    enum CoadingKey: String, CodingKey {
        case userName = "stackOverFlowId"
    }
}


let geekObject = Geek(userName: "PKB", name: "PK", platform: "IOS")
let encoder = JSONEncoder()

//:Encode Object To JSON

do {
    let data = try encoder.encode(geekObject)
    print(String(data: data, encoding: .utf8)!)
}catch (let error) {
    print("Json Encoding Failed",error )
}


/*:
### Fully Customize by conforming to Encodable
*/
struct Blog {
    let author:String
    let id:Int
    let url:URL
    
    enum BlogCoadingKey: String, CodingKey {
//        case author = "GoodAuthor"
        case author
        case id
        case url
    }
}

extension Blog: Encodable {
    func encode (to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: BlogCoadingKey.self)
        //try container.encode(author, forKey: .author)
        try container.encode(author, forKey: .author)
        try container.encode(id, forKey: .id)
        try container.encode(url, forKey: .url)
    }
}


//: This is used when you want to parse some data not all simply comment that line for EX if you do not need author then comment this as Above

//:You Can simply Change the Key By Assining row value to enum Like :  //case author = "GoodAuthor"




let post = Blog(author: "PK", id: 1, url: URL(string: "https://www.bobthedevloper.io")!)

do {
    let myBlog = try JSONEncoder().encode(post)
    let string = String(data: myBlog, encoding: .utf8)
    print(string!)
}catch (let error){
    print("Data Encoding Error",error)
}


/*:
### Fully Customize by conforming to Decodable
*/
struct User {
    let name:String
    let citizenship:String
    let id:Int
    
    init(name:String,citizenship:String,id:Int) {
        self.name = name
        self.citizenship = citizenship
        self.id = id
    }
}

/*:
And you have any method call names Citizen ID gain Dickel means you're converting and Jason file into an object.
So later you will use that in a method to finally initialize this property down the road.
 
First of all we're going to provide a coding key.
That's the number one rule.

 Use recording key whatever calling you want to use it. And then you go to provide a full Richar method call in it from the caller. This init method is used by GC and decoder later.

 We'll see what happens. Just like a function of encoder.
 
*/
extension User:Decodable {
    enum UserCoadingKey: String, CodingKey {
//        case name = "fullName"
        case name
        case citizenship
        case id
    }
    
    init(from decoder:Decoder) throws {
        let container = try decoder.container(keyedBy: UserCoadingKey.self)
        let name:String = try container.decode(String.self, forKey: .name)
        let citizenship:String = try container.decode(String.self, forKey: .citizenship)
        let id:Int? = try? container.decode(Int.self, forKey: .id)
        let idString:String? = try? container.decode(String.self, forKey: .id)
        
        //My Test To Handel Both If
        var finalId:Int?
        if id != nil {
            finalId = id
        }else {
            finalId = Int(idString!)
        }
        
        self.init(name:name, citizenship:citizenship, id:finalId!)
        //The benifit of this is you can use your custom value like
//        self.init(name:name, citizenship:"Republic of Haryana", id:id)
    }
    
}

//"1"
let userPkData = """
{
"name" : "Pankaj" ,
"citizenship" : "Republic of India" ,
"id" : "1"
}
""".data(using: .utf8)

do {
    let userPK = try JSONDecoder().decode(User.self, from: userPkData!)
    print(userPK)
}catch (let error) {
    print("JSON Decoder Error",error)
}
