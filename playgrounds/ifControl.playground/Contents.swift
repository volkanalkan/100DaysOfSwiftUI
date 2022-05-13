import UIKit

var myAge = 90

if myAge < 30 {
    print("30 -")
}
else if myAge >= 30 && myAge <= 40 {
    print("30 - 40")
}
else if myAge > 40 && myAge <= 50 {
    print("40 - 50")
}
else {
    print("50 +")
}

//and
3 < 5 && 8 < 7

//or
3 < 5 || 8 < 7

var myString = "James"

if myString == "James" {
    print("yes")
}
