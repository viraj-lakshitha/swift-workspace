// func greetings(name: String) -> String {
//     return "Hello \(name)"
// }

// func greetings() -> String {
//     return "Hello World"
// }

// print(greetings(name : "Viraj"))
// print(greetings())

// --- Optional return --- //
// func isOdd(num: Int) -> Bool? {
//     if num % 2 != 0 {
//         return true
//     }
//     return nil
// }

// if let odd = isOdd(num:13) {
//     print(odd)
// }

// --- Multiple Args and Return values --- //
// func getMaximumValue(num1: Int, num2: Int) -> (value: Int?, error: String?) {
//     if num1 == num2 { return (nil, "error: num1 and num2 both equal") }
//     if num1 > num2 { return (num1, nil) }
//     return (num2, nil)
// }

// var (value, error) = getMaximumValue(num1: 15, num2: 15)
// if let curr = value {
//     print(curr) 
// }

// if let err = error {
//     print(err)
// }

// --- Default Values --- //
// func receiver(num1: Int = 10, num2: Int = 11) {
//     print("received \(num1) and \(num2)")
// }
// receiver()
// receiver(num2: 17)
// receiver(num1: 15)
// receiver(num1: 15, num2: 17)

// Function as a parameter
// func findMax(num1: Int, num2: Int) -> Int {
//     if num1 == num2 || num1 > num2 {
//         return num1
//     }
//     return num2
// }

// func printer(times: Int, max: (Int, Int) -> Int) {
//     let maxValue = max(12, 14)
//     for time in 1...times {
//         print("Print \(time) -> \(maxValue)")
//     }
// }

// printer(times: 2, max: findMax)

// --- Closure --- //
// func multiplierByTwo(num: Int) -> Int {
//     return num * 2
// }

// var multiplier = { (num1: Int, num2: Int) -> Double in
//     return Double(num1 * num2)
// }

// print(multiplierByTwo(num: 3))
// print(multiplier(2, 3))

// --- Use closure with exsiting function --- //
// var scores = [12,34,54,26,87,94,20,11]
// var ascendingSort = scores.sorted { (num1, num2) -> Bool in 
//     return num1 < num2
// }
// print(ascendingSort)

// --- Using custom closures with functions --- //
// var members = ["Bob", "Jack", "Joe", "Allie"]
// --- 1. Closure as parameter --- //
// func activeMembers(completion: ([String]) -> Void) {
//     completion(members)
// }

// activeMembers { (attendants) in
//     for name in attendants {
//         print("\(name) is active")
//     }
// }

// --- 2. Closure as return value --- //
// func activeMembers(attendants: [String]) -> () -> Void {
//     let completion: () -> Void = {
//         for name in attendants {
//             print("\(name) is active")
//         }
//     }
//     return completion
// }
// var closureReturn = activeMembers(attendants: members)
// closureReturn()

// --- Type Alias --- //
typealias Person = (id: Int, name: String, isActive: Bool)

var persons: Array<Person> = [
    (1, "Viraj", true),
    (2, "Lakshitha", false),
]
for person in persons {
    let (id, name, isActive) = person
    print("Id: \(id), Name: \(name), Status: \(isActive)")
}

// func printer(person: Person) {
//     let (id, name, isActive) = person
//     if isActive {
//         print("Id: \(id), Name: \(name)")
//     }
// }
// var person1: Person = (1, "Viraj", true)
// printer(person: person1)