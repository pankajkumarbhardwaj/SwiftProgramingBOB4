//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

/*:
# Error Handling with result type
___
*/


//: ### HTTP Request

//: Desgin Error
enum HTTPError {
    case notFound404
    case forbidden403
}

//: Desgin Result Type
enum ResultType<T> {
    case sucess(T)
    case failure(HTTPError)
}

let sucess = ResultType.sucess("json, Image")
let failure:ResultType<Any> = ResultType.failure(.notFound404)

//: Desgin function and return Error object
// blog.bobthedevloper.io
// about.bobthedevloper.io
// team.bobthedevloper.io

func findSubDomain(subDomain:String) -> ResultType<String> {
    switch subDomain {
    case "business":
        return ResultType.failure(.forbidden403)
    case "blog":
        return ResultType.failure(.notFound404)
    default:
        return ResultType.sucess("Found Website")
    }
}

//: Execute Function (do - try)
let result = findSubDomain(subDomain: "business")
//Handle Error

switch result {
case let .sucess(data):
    print(data)
case let .failure(errorType):
    switch errorType {
    case .notFound404:
        print("Not Found 404")
    case .forbidden403:
        print("Not Allowed 403")
    }
}
