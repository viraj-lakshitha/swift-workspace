// --- Dictionary --- //
// var playerStats: [String: Int] = [
//     "Ronaldo": 12,
//     "Messi": 23,
// ]
// print(playerStats)

// var oldValues = playerStats.updateValue(15, forKey: "Messi")
// print(oldValues)

// --- Sets --- // Only store unique values
// var greetings: Set<String> = ["Hey", "Hi", "Hello", "Howdy"]
// print(greetings)

// greetings.insert("Welcome")
// print(greetings)

// if greetings.contains("Welcome") {
//     greetings.remove("Welcome")
//     print(greetings)
// }

// print(greetings.sorted())

// // You can using following methods to explain venn diagram
// var footballPlayers: Set = ["User1", "User2", "User4", "User5"]
// var cricketPlayers: Set = ["User3", "User4", "User6", "User2"]

// var playBothCricketAndFootball = footballPlayers.intersection(cricketPlayers)
// print(playBothCricketAndFootball)

// var playOnlyOneSport = footballPlayers.symmetricDifference(cricketPlayers)
// print(playOnlyOneSport)

// var allPlayers = footballPlayers.union(cricketPlayers).sorted()
// print(allPlayers)

// var playOnlyFootball = footballPlayers.subtracting(cricketPlayers)
// print(playOnlyFootball)

// var playOnlyCricket = cricketPlayers.subtracting(footballPlayers)
// print(playOnlyCricket)

// // --- Tuples --- //
// var firstTupple: (String, Int, Bool) = ("Rainy", 27, true)
// print(firstTupple.1)

// var (climate, temperature, isUpdated) = firstTupple
// print(climate)

// var profile = (name: "Viraj", isActive: true, age:22)
// print(profile.name)

// --- Conditional Statement and Loops --- //
// var currentAge = 16
// if currentAge < 13 {
//     print("Child")
// } else if currentAge > 13 && currentAge < 20 {
//     print("Teenage")
// } else {
//     print("Adult")
// }

// var title : String? = "Mr"
// if let currTitle = title { // if title nil, then didn't return anything
//     print(currTitle) // if title, not nil, then print the title
// }

// --- Optinal Binding --- //
// var accountBalance: Int?
// if let balance = accountBalance {
//     print(balance)
// } else {
//     print("cannot find the account balance!")
// }

// var shopDetailed = [
//     "Shop1" : [
//         "isOpen": "true",
//         "openTime": "8:00am",
//         "closeTime": "5:00pm"
//     ],
//     "Shop2" : [
//         "isOpen": "false"
//     ], 
// ]

// if let isOpen = shopDetailed["Shop2"]?["isOpen"] {
//     if isOpen == "true" {
//         print("Shop opened!")
//     } else {
//         print("Shop closed!")
//     }
// } else {
//     print("Details not found!")
// }

// var sports = ["Football", "Cricket", "Karate"]
// for sport in sports {
//     print(sport)
// }

// for sport in sports[0...1] { // print upto index = 1, from index = 0
//     print(sport)
// }

// var personalityScore = [
//     "Leadership" : "95%",
//     "Creativity": "70%",
//     "Critical Thinking": "90%"
// ]

// for (title, score) in personalityScore {
//     print("\(title) : \(score)")
// }

// for index in 1...10 { // `for index in 1...<11 { print(index) }` - gives the same output
//     print(index)
// }

// --- While Loop --- //
// var limit = 5
// while limit < 10 {
//     print(limit)
//     limit += 1
// }

// repeat {
//     limit += 1
//     print(limit)
// default:
// } while limit < 10

// --- Switch Case --- //
// var answer1 = "srilanka"
// var answer2 = "volleyball"
// switch (answer1, answer2) {
// case ("srilanka", "volleyball"):
//     print("correct!")
//     break
// case ("india", "volleyball"):
//     print("quite close!")
//     break
// case ("japan", "karate"):
//     print("your too far!")
//     print("try again!")
// }

// var age = 21
// switch age {
//     case (let currAge) where currAge < 18 && currAge >= 0:
//     print("child")
//     case (let currAge) where currAge >= 18 && currAge >= 0:
//     print("adult")
//     default:
//     print("invalid age")
// }

// // --- Guard Statement --- //
// let shopItems = ["Books": 10, "Pens": 12, "Eraser": 5]
// let currentGoal = 11

// for (item, price) in shopItems {
//     guard currentGoal >= price else {
//         print("cannot afford item \(item)")
//         continue
//     }
//     print("you can afford \(item)")
// }#