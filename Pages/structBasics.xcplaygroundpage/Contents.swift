import Foundation

// Structs are FAST!
// Struct are value types
// Allocated in the stack

// Simple struct
// mutable struct
struct Person {
    var firstName: String
    var lastName: String
    var userIsPremium: Bool
}

var person1 = Person(firstName: "Walker", lastName: "Simanjuntak", userIsPremium: true)
print(person1.firstName)

person1.firstName = "Valentinus"
print(person1.firstName)

// let's play with mutable struct
struct Person4 {
    let firstName: String
    private(set) var lastName: String
    
    // add mutating before func
    mutating func changeLastName(){
        lastName = "Somanimbil"
    }
}

var person4 = Person4(firstName: "Walker", lastName: "Simanjuntak")
print(person4.lastName)

person4.changeLastName()
print(person4.lastName)

var person5 = Person4(firstName: "Walker", lastName: "Somanimbil")
print(person5.lastName)

// we can't access lastName because it is a private set data type
//person5.lastName = "Simanjuntak"
// but we can get the value
let info = person5.lastName
print(info)


// let's create an immutable and mutable struct
// immutable struct
struct Person2 {
    let firstName: String
    let lastName: String
    let userIsPremium: Bool
}

// we can't mutate the struct like what we usually did
var person2 = Person2(firstName: "Walker", lastName: "Simanjuntak", userIsPremium: true)
//person2.firstName = "Valentinus"
print(person2.firstName)

// we need a function to do that
func changePerson2(newName: String) -> Person2 {
    Person2(firstName: newName, lastName: "Simanjuntak", userIsPremium: false)
}

person2 = changePerson2(newName: "Valentinus")
print(person2.firstName)

// another way to do it
struct Person3 {
    let firstName: String
    let lastName: String
    let userIsPremium: Bool
    
    func changePerson3 (newName: String) -> Person3 {
        Person3(firstName: newName, lastName: lastName, userIsPremium: userIsPremium)
    }
}

var person3 = Person3(firstName: "Walker", lastName: "Simanjuntak", userIsPremium: true)
print(person3.firstName)

person3 = person3.changePerson3(newName: "Valentinus")
print(person3.firstName)
