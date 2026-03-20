import Foundation

/*
 
 During the App development phase, we will create and detroy OBJECTS
 - Create = Initialize = Allocate, writing data to memory
 - Destroy = Deinitialize = Deallocate, deleting data from memory
 
 Now, Swift have ARC (Automatic Reference Count).
 So when we create 1 object, the count goes up 1,
 we create another object the count goes up 2,
 we destroy 1 object, the count goes down to 1
 
 So keep in mind that, the more objects in the memory, THE SLOWER an App perform.
 We need to create an App with ARC count as low as possible.
 We create an object when we need them, and destroy it when we not need it.
 
 // For Example
 If our App have 2 screens, and user want to move from screen 1 to screen 2,
 we may want to allocate screen 2 when we need it (when user click a button to segue to screen 2).
 That way, when we moved to screen 2, we also may want to deallocate screen 1.
 
 There are 2 types of memory, STACK and HEAP
 Only objects in HEAP is counted towards ARC.
 
 Objects in Stack are:
 - String, Int, Double, Bool
 - NEW: Struct, Enum, Array
 
 Objects in Heap are:
 - Class, Actors
 
 Now, let's take a real world example:
 iPhone is a "multi-thread" environment. It means that there are multiple 'threads' or 'engines' working simultaneously.
 1 thread can be referenced as a Stack,
 and there is only 1 Heap for all threads

 It concludes that a stack is FASTER than a HEAP.
 - Stack has lower memory footprint, preferable
 - while, Heap has a higher memory footprint, risk of threading issues
 
 // Value vs Reference Type
 Objects in Stack are "Values" types.
 So whenever we modify a value in Stack, we create a copy of that object and set a new value not in the object we copied.
 
 While objects in Heap are "Reference" types.
 It means, when we modify the value, we also modify the value we referencing. This 'reference' is called a pointer.
 It points to a memory where the value allocated, in this case to the object in the Heap. SO it has a bigger risk.
 
 // The differences between Struct and Class
 So imagine, you have 1 box of accesories.
 In Struct, if your friends wants to add something or change something inside the box, they have to create a copy of it first.
 It means that, your box will not get affected by things they want to add to their boxes.
 
 In Class, they are not creating a copy of your box. They can add and change what's inside your box.
 
 */

// Struct
struct accessoryBox {
    var accessory: String = "Necklace"
}

var myBox = accessoryBox()
var myFriendsBox = myBox
myFriendsBox.accessory = "Ring"

print("My Box: \(myBox.accessory)")
print("My Friend's Box: \(myFriendsBox.accessory)")

// Class
class accessoryBox2 {
    var accessory: String = "Earrings"
}

var myBox2 = accessoryBox2()
var myFriendsBox2 = myBox2
myFriendsBox2.accessory = "Softlens"

print("My Box: \(myBox2.accessory)")
print("My Friend's Box: \(myFriendsBox2.accessory)")


/*
 
  Use Struct for things like:
  "Factory", "Manager", "ViewModel", "Service"
  Objects that we create and performs action inside
 
  Use Class for:
  Data Models
  Objects that we create and pass around our app
 
 */
