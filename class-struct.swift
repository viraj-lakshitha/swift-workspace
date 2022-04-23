// --- Class --- //
// class Person {
//     var name: String
//     var age: Int
//     var address: String? // Optional Parameter

//     // If you want to specify class level global varibales, then use static and class
//     static var minLifeSpan: Int = 75
//     class var category: String {
//         return "Human"
//     }

//     // Read-Only
//     var score: Int {
//         return age * 5
//     }
//     fileprivate var height: Int

//     // Read and Write - Make height public
//     var Height: Int {
//         get { return height } // Getter
//         set { // Setter
//             if (newValue > 156) {
//                 height = newValue
//             }
//         }
//     }
    
//     // Class initilizer
//     init(name: String, age: Int) { // Accept both name and age 
//         self.name = name
//         self.age = age
//         self.height = 156
//     }
    
//     // Overloading init function
//     convenience init(name: String) { // Accept only name
//         self.init(name: name, age: 18)
//     }

//     convenience init(age: Int) { // Accept only age
//         self.init(name: "Unknown", age: age)
//     }

//     // Class specific function
//     func printDetails() {
//         print("Name: \(self.name) | Age: \(self.age) | Score: \(self.score) | Height: \(self.height)cm")
//     }
// }

// // Use default init to initilize new person
// var person1 = Person(name: "Viraj", age: 22)
// person1.printDetails()

// // Use convenience init function to initilize new person
// var person2 = Person(name: "Lakshitha")
// person2.printDetails()
// var person3 = Person(age: 22)
// person3.printDetails()

// // Use publicly accessible Height to change the height value
// var person4 = Person(name: "Test", age: 25)
// person4.Height = 180
// person4.printDetails()

// // Class Level - Global Variables
// print(Person.minLifeSpan)
// print(Person.category)

// --- Sub Class --- //
// class Student: Person {
//     var school: String

//     override class var category: String {
//         return "Animal >> Human"
//     }

//     init(name: String, age: Int, school: String) {
//         self.school = school // Note : Need to init all param before init super class params
//         super.init(name: name, age: age)
//     }

//     override func printDetails() {
//         print("Name >> \(self.name) Age >> \(self.age) School >> \(self.school)")
//     }
// }

// var student1 = Student(name: "Vitiya", age: 17, school: "Maliyadeva")
// student1.printDetails()
// print(Student.minLifeSpan)
// print(Student.category)

// --- Struct --- //
struct Student {
    var id: Int
    var name: String
    var subjects: [String]
    var parent: Parent?

    var description: String {
        return "Type of person who is under 21 years old"
    }

    func printDetails() {
        print("--- Student Details ---\nName: \(self.name)\nSubjects: \(self.subjects)")
    }

    // When comes to structs, structs have their own default initilizer but we can define custom initilizer also

    // Cannot use mutating member on mutative value (because self is mutable by default)
    // To get rid of this type of errors/action, append mutating explict permission to the func
    mutating func completeSubjects(index: Int) {
        subjects.remove(at: index)
    }
}

struct Parent {
    var name: String
    var email: String
}

// var student1 = Student(id: 1, name: "Viraj", subjects:["Science", "History", "English"], parent: nil)
// student1.printDetails()
// print(student1.description)
// student1.completeSubjects(index: 1)
// student1.printDetails()

var student2 = Student(
    id: 2,
    name: "Alex",
    subjects:["Science", "Computer Practice", "English"], 
    parent: nil
    // parent: Parent(name: "John Alex", email: "johnalex@mail.com")
)

if let parentName = student2.parent?.name {
    if let parentEmail = student2.parent?.email {
        print("\(student2.name)'s parent details >>\nName: \(parentName)\nEmail: \(parentEmail)")
    } else {
        print("couldn't find parent email address")
    }
} else {
    print("couldn't find parent details")
}