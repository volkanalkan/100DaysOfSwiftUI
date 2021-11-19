/* DAY 2 */

import Cocoa




/* BOOLEANS => true or false */

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))
//yes or no, there's no between

let goodDogs = true
var gameOver = false
print(gameOver)

// same as "!x" (for x)
gameOver.toggle()
print(gameOver)

let isMultiple = 120.isMultiple(of: 3) // is the same as true
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)







/* SIMPLE DATAS */

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart
print(greeting)

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let luggageCode = "1" + "2" + "3" + "4" + "5" // =>> luggageCode = "12345"
print(luggageCode)

let quote = "Then he tapped a sign saying \"Believe\" and  walked away."

let name = "Taylor"
let age = 26
//we're using that way!!! this is a more convenient and faster way.
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

//let messageTwo = "Hello, my name is " + name + " and I'm " + age + " years old." -> WRONG!
//print(messageTwo)


//That's useable too, but this is the slow way!
let numberTwo = 11
let missionMessage = "Apollo" + String(numberTwo) + " landed on the moon."
print(missionMessage)

print("5 x 5 is \(5 * 5)")



