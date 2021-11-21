/* DAY 3 */

import Cocoa



/* ARRAYS */

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

//append a variable
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

// temperatures.append("Chris") -> WRONG!!! It must be as a double
let firstBeatle = beatles[0]
let firstNumber = numbers[0]
// let notAllowed = firstBeatle + firstNumber -> WRONG!!! not allowed IT MUST BE THE SAME TYPE


var scores = Array<Int>() //learn that shown
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])
print(scores)

var albums = [String]() // Array[String]() is excatly the same thing
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums)
print(albums.count)

//or we can say that
var example = ["Yes"]
example.append("No")
print(example)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)
print(characters)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen")) // it's a boolean, checks if the specified word is included in the array.

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted()) // sorted alphabetically

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversePresidents = presidents.reversed() // not optimized & too slow
print(reversePresidents)







/* DICTIONARIES */

var employee = ["Taylor Swift", "Singer", "Nashville"]

print("Name: \(employee[0])") // but we might have some problems, for fix, we should be deleted the element after specifying
employee.remove(at: 0) // no longer exist
print("Job title: \(employee[0])")
employee.remove(at: 0)
print("Location: \(employee[0])")
employee.remove(at: 0)


// BUT There's another way called "dictionaries"
// MUCH CLEAR!!!!!

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print("Name: \(employee2["name", default: "Unknown"])")
print("Job: \(employee2["job", default: "Unknown"])")
print("Location: \(employee2["location", default: "Unknown"])")

print(employee2["password", default: "Unknown"])



let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
print(heights)

var ex2 = [String]()
ex2.append("hey")
print(ex2)

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"
print(archEnemies)

/*
 
EXAMPLE FOR INVALID
 
let prices = ["Milk": 1, "Pepsi": 2]
let first = prices[0]
 
 That's WRONG!!!! This attempts to use a dictionary like an array, which is INVALID!!
 
 
 
 
 EXAMPLE FOR VALID
 
 let characters = ["Captain": "Malcolm", "Engineer": "Kaylee"]
 let captain = characters["Captain"]
 
 This code is valid Swift :)

 */





/* SETS */

let actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(actors)
// the set is not care what is the order of the items

var actors2 = Set<String>()
actors2.insert("Denzel Washington")
actors2.insert("Tom Cruise")
actors2.insert("Nicolas Cage")
actors2.insert("Samuel L Jackson")
print(actors2)

// let staffReviews = Set([1, 2, 1, 2, 3]) -> Wrong!
//Sets don't contain duplicate items, so this set will contain the numbers 1, 2, and 3

var ratings = Set([1, 1, 1, 2, 2, 2]) // contains 2 items !
print(ratings)

var ratings2 = Set([1, 2, 1, 2, 3]) // contains 3 items !
print(ratings2)
 







/* ENUMS */

var selected = "Monday"
selected = "Tuesday"
selected = "January" // a month...?
selected = "Friday " // has an extra space!



// LONG WAY !!
//
// enum Weekday {
//     case monday
//     case tuesday
//     case wednesday
//     case thursday
//     case friday
// }



// SHORTEST WAY !!

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}


var day = Weekday.monday
// long way -> day = Weekday.tuesday
day = .tuesday // shortest way
day = .friday 
//day = Weekday.january -> doesn't work & exist




