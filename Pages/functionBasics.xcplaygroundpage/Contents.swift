import Foundation

func myFirstFunction(){
    print("Hello, Function 1")
    mySecondFunction()
    myThirdFunction()
}

func mySecondFunction(){
    print("Hello, Function 2")
}

func myThirdFunction(){
    print("Hello, Function 3")
}

myFirstFunction()


func getUsername() -> String {
    let name: String = "Walker"
    print("Hello,", name)
    return name
}

var username: String = getUsername()


// how to use 2 functions and how to return the values

showHomeScreen()

func showHomeScreen(){
    let userIsValid: Bool = true
    let userIsAccessedHomeScreen: Bool = true
    let status = checkUserStatus(isValid: userIsValid, isAccessed: userIsAccessedHomeScreen)
    
    if status == true {
        print("This is Home Screen")
    } else {
        print("You are not authorized to access this screen")
    }
}

func checkUserStatus(isValid: Bool, isAccessed: Bool) -> Bool{
    if isValid && isAccessed {
        return true
    } else {
        return false
    }
}

// how to use if and guard
doSomething()

func doSomething (){
    let title = "Avengers"
    
    // Check if the title is "Avengers"
    if title == "Avengers" {
        print("Marvel")
    }else{
        print("Not Marvel")
    }
}

doSomethingElse()

func doSomethingElse() -> Bool{
    let title = "Not Avengers"
    
    // Make sure the title is "Avengers"
    guard title == "Avengers" else {
        return false
    }
    return true
}

// calculate number using function
var number1: Int = 5
var number2: Int = 3
addTwoNumbers(number1: number1, number2: number2)

func addTwoNumbers(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

var calculatedNumber: Int {
    number1 + number2
}
print(calculatedNumber)
