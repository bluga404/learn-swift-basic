import Foundation

var finalFruits: [String] = ["Apple", "Banana", "Mango", "Apple"]

print(finalFruits)

var finalFruits2: Set<String> = ["Apple", "Banana", "Mango", "Apple"]

print(finalFruits2)

// a dictionary also can't have duplicate value
var firstDictionary: [String : Bool] = [
    "Apple" : true,
    "Banana" : true,
]

// if we set a varibale using dict, it will become am optional,
// if the key is not present, then it will returned nil
let item = firstDictionary["Mango"]

print(item ?? "Not Found")

var anotherDictionary: [String : String] = [
    "abc" : "Apple",
    "def" : "Mango",
    "xyz" : "Banana",
]

let item2 = anotherDictionary["abc"]

// we can also add a new key and value to a dict like this
anotherDictionary["mno"] = "Pineapple"

// remove a key and value like this
anotherDictionary.removeValue(forKey: "def")

print(anotherDictionary)


struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abc", title: "Fruits", likeCount: 40),
    PostModel(id: "def", title: "Sports", likeCount: 35),
    PostModel(id: "xyz", title: "Otomotif", likeCount: 60)
]

if postArray.indices.contains(1){
    let item = postArray[1]
    print(item)
}

var postArray2: [String:PostModel] = [
    "abc" : PostModel(id: "def", title: "Trends", likeCount: 50),
    "hij" : PostModel(id: "klm", title: "Lifestyle", likeCount: 55),
    "nop" : PostModel(id: "qrs", title: "Cooking", likeCount: 20)
]

let anotherItem = postArray2["hij"]
print(anotherItem ?? "Not Found")
