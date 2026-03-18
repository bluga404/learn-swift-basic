import Foundation

// let is used for a uchangeable constants
let myNameIsWalker = true

// we can't do this
// myNameIsWalker = false

// var is used for changeable variables
var myAge = 22

// so whenever we want to change the myAge, we can. As long as it follows the data types.
myAge = 23
myAge = 34

// we cannot do this
// myAge = 24.5

myAge = 90

// let's touch some if's
var nameIsWalker: Bool = true

if nameIsWalker == true{
    print("1. You are Walker")
} else {
    print("1.1 You are not Walker")
}

if nameIsWalker{
    print("2. You are Walker")
}

if nameIsWalker == false{
    print("3. You are Not Walker")
}

if !nameIsWalker{
    print("4. You are Not Walker")
}

