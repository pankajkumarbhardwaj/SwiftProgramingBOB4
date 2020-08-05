
//:Your Past
struct WeekDays {
    private var days = ["Mon", "tue", "wed", "thu", "fri",]
    
    subscript(index:Int) -> String {
        return days[index]
    }
}

let myDays = WeekDays()
myDays[0]




struct JSON {
    private var storage: [String:Any]
    
    init(dictionary:[String:Any]) {
        storage = dictionary
    }
    
    subscript<T>(key:String) -> T? {
        return storage[key] as? T
    }
}

let republicOfIndia = JSON(dictionary: [
    "capital" : "Delhi",
    "name" : "Republic of india",
    "population" : 5000
])



let indiaCapital:String? = republicOfIndia["capital"]
let indiaName:String? = republicOfIndia["name"]
let indiaPopulation:Int? = republicOfIndia["population"]

let indiaCapital2:Int? = republicOfIndia["capital"]


