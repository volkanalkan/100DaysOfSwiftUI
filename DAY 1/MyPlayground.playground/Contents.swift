/* DAY 1 OF HACKING WITH SWIFT - 100 Days of SwiftUI */




/* VARIABLES AND CONSTANTS */

//library
import Cocoa

var greeting = "Hello, playground"

var name = "Ted"
name = "Volkan"
name = "yes"
 
let character = "Daphne"

var playerName = "volkan"
print(playerName)

playerName = "Daphne / trial"
print(playerName)

playerName = "Erica"
print(playerName)







/* STRINGS */

let managerName = "Michael Scott"
let fogBreed = "Samoyed"
let meaningOdLife = "How many roads must a man walk down?"

let actor = "Denzel Washington"
let filename = "paris.jpg"
let emoji = "⭐️ star ⭐️"

print(emoji)


//backslash before quotes!!
let quote = "Then he tapped a sign saying \"Believe\" and walkd away."
print(quote)


// quote x3 for multilines string
let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)

//counter
print(actor.count)

// another notation
let counterX = movie.count
print(counterX)


//transform: uppercase
print(emoji.uppercased())

// querying if string is at the beginning
print(movie.hasPrefix("A day"))

// querying if string is at the end
print(filename.hasSuffix(".jpg"))





/* WHOLE NUMBERS */

let score = 10

//swift ignores the underlines while using numbers
let reallyBig = 100_000_000

//ex
let exScore = 1_00____0_00__0__0_00

// 4 transactions
let lowerScore = score - 2
let higherScore = score + 5
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter = counter + 5 // counter += 5 || fully same thing
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120

/*
 for n, Is it any multiple of n? -> .isMultiple(of: n)
 the result must be true or false, like a boolean operator
*/
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))






/* DECIMALS */

let numberA = 0.1 + 0.2 //wrong impression
print(numberA)

let a = 1 // = int
let b = 2.0 // = double
// WE CANNOT MIX  like a + b

/* there're 2 ways for this situation */
let c = Double(a) + b // but it must be capitalize when write double or int like "Double" or "Int"
// or
let d = a + Int(b)

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var nameEx = "Nicolas Cage"
nameEx = "John Travolta"
// we cannot say >>> nameEx = 57 'cause we already said that nameEx is a string.

var rating = 5.0
rating *= 2
print(rating)
print(Int(rating))




