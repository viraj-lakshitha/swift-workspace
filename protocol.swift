// --- enums --- //
enum Days: String {
    case Mon = "Monday"
    case Tue = "Tuesday"
    case Wen = "Wednesday"
    case Thu = "Thursday"
    case Fri = "Friday"
    case Sat = "Saturday"
    case Sun = "Sunday"

    func printVariation() -> String {
        switch self {
            case .Sun:
                return "Weekends"
            case .Sat:
                return "Weekends"
            @unknown default:
                return "Weekdays"
        }
    }
}
// var today = Days.Sun

// switch today { // For enums, we don't need 'default', if you want to add, then append @unknow before default keyword
//     case .Mon:
//         print("monday")
//     case .Tue:
//         print("tuesday")
//     case .Wen:
//         print("wednesday")
//     case .Thu:
//         print("thursday")
//     case .Fri:
//         print("friday")
//     case .Sat:
//         print("saturday")
//     case .Sun:
//         print("sunday")  
//     // @unknown default:
//     //     print("unknown")      
// }

// --- Raw and Associate Values
// print(Days.Mon.printVariation())

// --- Protocol --- // >> Work like interfaces in Java
// Declare protocol
protocol Item {
    var brand: String { get }
    var manufacture: String { get set }

    init(brand: String, manufacture: String)
    func collect() -> Bool
}

extension Item {
    var withManufactureYear: String {
        return "\(self.manufacture) in \(2020)"
    }

    init(brand: String) {
        self.init(brand: brand, manufacture: "SAMSUNG - 2020")
    }

    func collect() -> Bool { // Default implementation of collect() function
        return false
    }
}

protocol Printer {
    func printDetails() -> String
}

extension Printer {
    func printDetails() -> String { // Default implementation for printDetails function and this is overridable
        return "executing default printDetails() function..."
    }
}

// Protocol adoption
class Phone: Item, Printer {
    var brand: String
    var manufacture: String

    required init(brand: String, manufacture: String) {
        self.brand = brand
        self.manufacture = manufacture
    }

    func collect() -> Bool {
        return true
    }

    func printDetails() -> String {
        return "Brand: \(brand), Manufacture: \(manufacture)"
    }
}

class Laptop: Item, Printer {
    var brand: String
    var manufacture: String

    required init(brand: String, manufacture: String) {
        self.brand = brand
        self.manufacture = manufacture
    }
}

var iphoneX = Phone(brand: "Apple", manufacture: "Apple Inc")
print(iphoneX.collect())
print(iphoneX.printDetails())

var samsungS20 = Phone(brand: "Samsung")
print(samsungS20.printDetails())

var macbookAir = Laptop(brand: "Asus", manufacture: "Asus Corps")
print(macbookAir.printDetails())
print(macbookAir.collect())