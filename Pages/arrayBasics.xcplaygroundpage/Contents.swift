import Foundation

// We can store multiple data using tuple
var title1: String = "Harry Potter"
var title2: String = "Forrest Gump"

// but this is not scalable
func getTitle(info: (titleOne: String, titleTwo: String)){
    
}

getTitle(info: (title1, title2))

// Or we can also use Data Model using Struct

struct Movies {
    var title1: String
    var title2: String
    var title3: String
    var title4: String
    var title5: String
    var title6: String
    var title7: String
}

func getTitle2(info: Movies){
    
}

// But again, this is not sclabale anda maintanable
getTitle2(info: Movies(title1: "Harry Potter", title2: "Forrest Gump", title3: "The Green Mile", title4: "About Time", title5: "About You", title6: "The Pursuit of Happyness", title7: "Me Before You"))


// ---------------------------------------
// this is where Array comes to help
let harryPotter: String = "Harry Potter"
let forrestGump: String = "Forrest Gump"

// there are 3 ways to define an array
let movies1: [String] = ["Harry Potter", "Forrest Gump"]
let movies2: [String] = [harryPotter, forrestGump]
let movies3: Array<String> = [harryPotter, forrestGump]

// we can also use array for other types of data
let myBools: [Bool] = [true, false, true, false]

func getTitle3(info: [String]){
    
}

var movieArray: [String] = ["Harry Potter", "Forrest Gump", "The Green Mile", "About Time", "About You", "The Pursuit of Happyness", "Me Before You"]

let count = movieArray.count
let first = movieArray.first
let last = movieArray.last

// But if we look closer at the strings, first and last are opsional data types
// it is happen because, if there is no value inside an array, it will return nil

// so let's coalesing it
if let first = movieArray.first {
    
}


// to append an array we can just add them
// but this is not generally how we want to add a value
//movieArray = movieArray + ["Men in Black", "Smurf"]

// as a good practice, we can use append
movieArray.append("Men in Black")
movieArray.append("Smurf")

// array use count to count the length of an array
// and use index to access the value
// count = 1, 2, 3, 4
// index = 0, 1, 2, 3

let firstIndex = movieArray.indices.first
let lastIndex = movieArray.indices.last

// generally, we can access the value of an index if we know absolutely what is inside our array

movieArray[4]

// to check if the index is there or not, developer usually use this
// so we basically just check index presentation in the array
if movieArray.indices.contains(4){
    let item = movieArray[4]
}

// we can also insert an element to a specific index of the array
movieArray.insert("The Hobbit", at: 3)

// we can also insert a collections of array
movieArray.insert(contentsOf: ["500 Feet Apart", "I Wanna Eat Your Pankreas"], at: 6)

// we can also deleting a value from the array

if movieArray.indices.contains(3){
    let item = movieArray.remove(at: 3)
}

// creating an array from struct
struct actorModel {
    var actorName: String
    var actorFavouriteMovie: String
}

var myActors: [actorModel] = [
    actorModel(actorName: "Cillian Murphy", actorFavouriteMovie: "Peaky Blinders"),
    actorModel(actorName: "Tom Hanks", actorFavouriteMovie: "Forest Gump")
]

// The difference between array and set is:
// in the array, WE CAN store duplicate value, but ini set, we CAN'T
// Set contains unique value

var finalFruits: [String] = ["Apple", "Banana", "Mango", "Apple"]

print(finalFruits)

var finalFruits2: Set<String> = ["Apple", "Banana", "Mango", "Apple"]

print(finalFruits2)
