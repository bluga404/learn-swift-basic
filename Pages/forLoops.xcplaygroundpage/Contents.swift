import Foundation

//for x in 0..<100 {
//    print(x)
//}

var myArray: [String] = ["a", "b", "c", "d", "e"]

var secondArray: [String] = []

for item in myArray {
    print(item)
    
    if item == "c"{
        secondArray.append(item)
    }
}

print(secondArray)

struct lessonModel {
    var title: String
    var isFavourite: Bool
}

var lessons = [
    lessonModel(title: "Lesson 1", isFavourite: true),
    lessonModel(title: "Lesson 2", isFavourite: false),
    lessonModel(title: "Lesson 3", isFavourite: false),
    lessonModel(title: "Lesson 4", isFavourite: false),
    lessonModel(title: "Lesson 4", isFavourite: true)
]

var favouriteLessons: [String] = []
var favouriteLessons2: [lessonModel] = []

for item in lessons {
    if item.isFavourite == true {
        favouriteLessons.append(item.title)
        favouriteLessons2.append(item)
    }
}

print(favouriteLessons)
print(favouriteLessons2)


for (index, lesson) in lessons.enumerated() {
    print("\(index): '\(lesson)'")
}

for (index, lesson) in lessons.enumerated() {
    
    if index == 2 {
        break
    }
    
    print("\(index): '\(lesson)'")
}

for (index, lesson) in lessons.enumerated() {
    
    if index == 2 {
        continue
    }
    
    print("\(index): '\(lesson)'")
}
