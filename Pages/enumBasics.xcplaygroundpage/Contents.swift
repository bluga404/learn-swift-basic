import Foundation

// Let's say we have a Struct of car names and types
struct car{
    var name: carNameOption
    var type: String
}

//var car1 = car(name: "Honda", type: "CRV")
//var car2 = car(name: "coffee", type: "BRV")
//var car3 = car(name: "Toyota", type: "Fortuner")

// Without enum, we can still edit the name value
// so let's create an enum
enum carNameOption {
    case Honda, Toyota
    
    var title: String {
        switch self{
        case .Honda:
            return "Honda"
        case .Toyota:
            return "Toyota"
        }
    }
}

var car1 = car(name: .Honda, type: "CRV")
var car2 = car(name: .Toyota, type: "Fortuner")
var car3 = car(name: .Honda, type: "Brio")

var hondaBrand: carNameOption = .Honda
print(hondaBrand.title)
