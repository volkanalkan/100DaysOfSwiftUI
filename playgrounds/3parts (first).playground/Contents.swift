import Cocoa

//Variables & Constants

//snake_case
//camelCase

// ------------- PART 1 -------------

//String

var userName = "James"
userName.append("o")
userName.lowercased()
userName.uppercased()

var userSurname = "Hetfield"

userName = "Lars"

//integer & double & float

//int
let userAge = 50
let myNumber = 4
userAge / myNumber


//double
let userAgeD = 50.0
let myNumberD = 4.0
userAgeD / myNumberD

//boolean

var myBoolean = false
myBoolean = true

// ------------ PART 2 -------------

let myString : String = "50"
let anotherNumber : Int = 10

let stringNumber : String = String(20)

//define

let myVarible : String

//initialization

myVarible = "Test"
let myUpperVariable = myVarible.uppercased()

print(myVarible)
print(myUpperVariable)

// ------------ PART 3 -------------

// Arrays

var myFavouriteMovies = ["Pulp Fiction","Kill Bill","Reservoir Dogs",5,true] as [Any]

//as -> casting

myFavouriteMovies[0]
myFavouriteMovies[1]
myFavouriteMovies[2]
myFavouriteMovies[3]
myFavouriteMovies[4]

var myStringArray = ["Test6","Test2","Test1","Test4"]

myStringArray[0].uppercased()

myStringArray.count

myStringArray[myStringArray.count-1]

myStringArray.last

myStringArray.sort()

var myNumberArray = [1,2,3,4,5,6,7]
myNumberArray[0]
myNumberArray.append(8)
myNumberArray.last

myNumberArray[0] = 15
print(myNumberArray)


// Set

//unordered collection, unique elements

var mySet : Set = [1,2,3,4,5,1,2]
print(mySet)

var myStringSet : Set = ["a","b","c","a"]

//array'i set'e çevirme
var myInternetArray = [1,2,3,1,2,5,6,2,1]
var myInternetSet = Set(myInternetArray)
print(myInternetArray)
print(myInternetSet)

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]

//union = birleştirme
var mySet3 = mySet1.union(mySet2)
print(mySet3)


//Dictionary
//key-value pairing

var myFavoriteDirectors = ["Pulp Fiction" : "Tarantino","Lock, Stock" : "Guy Ritchie","The Dark Knight" : "Christopher Nolan"]

myFavoriteDirectors["Pulp Fiction"]
myFavoriteDirectors["The Dark Knight"]

myFavoriteDirectors["Pulp Fiction"] = "Quentin Tarantino"
print(myFavoriteDirectors)

myFavoriteDirectors["Seven Samurai"] = "Akira Kurisowa"
print(myFavoriteDirectors)

var myDictionary = ["Run" : 100, "Swim" : 200, "Basketball" : 300]
myDictionary["Run"]
 
// SORU1 : DICTIONARY'DE SPECIFIC PRINT YAPMA




