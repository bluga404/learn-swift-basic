import Foundation

// optional data types
var optionalBool: Bool? = nil
//print(optionalBool)
//optionalBool = true
//print(optionalBool)
//optionalBool = false
//print(optionalBool)

// other bool is nill so it will return the true value
let newBool: Bool = optionalBool ?? true

print(optionalBool)
print(newBool)

// difference between || (OR) and ?? (Null Coalescing Operator)

// OR, compare opsional to bool
var myBool: Bool? = false || true
print(myBool)

// Null Coalescing Operator, if left side nil, return right hand value
var myOtherBool: Bool = nil ?? true
print(myOtherBool)

// other example in string data type
var myString: String? = "Hello"
print(myString ?? "There is no value")

myString = "Hello World!"
print(myString ?? "There is no value")

myString = nil
print(myString  ?? "There is no value")

// -----------------------------------

var userIsPremium: Bool? = nil

checkUserIsPremium(userPremium: userIsPremium)
checkUserIsPremium2(userPremium: userIsPremium)
checkUserIsPremium3(userPremium: userIsPremium)
checkUserIsPremium4(userPremium: userIsPremium)
checkUserIsPremium5(userPremium: userIsPremium)
checkUserIsPremium6(userPremium: userIsPremium)

// return opsional value
func checkUserIsPremium(userPremium: Bool?) -> Bool? {
    userPremium
}

// use nil coalescing operator to unwrape the opsional value
func checkUserIsPremium2(userPremium: Bool?) -> Bool {
    userPremium ?? false
}

// using if let
func checkUserIsPremium3(userPremium: Bool?) -> Bool {
    // if there is a value in userPremium, let newValue that value
    if let newValue = userPremium{
        // return the non-optional value
        return newValue
    // else, if there is no value in userPremium, return false
    }else{
        return false
    }
}

// using if let v2
func checkUserIsPremium4(userPremium: Bool?) -> Bool {
    // if there is a value in userPremium, let newValue that value
    if let userPremium{
        // return the non-optional value
        return userPremium
    // else, if there is no value in userPremium, return false
    }
    
    return false
}

// using guard
func checkUserIsPremium5(userPremium: Bool?) -> Bool {
    // make sure there is a value in userPremium
    // if there is, set newValue as that value
    // else (otherwise), return false
    guard let newValue = userPremium else {
        return false
    }
    // here we have access to the non-optional
    return newValue
}

func checkUserIsPremium6(userPremium: Bool?) -> Bool {
    // make sure there is a value in userPremium
    // if there is, set newValue as that value
    // else (otherwise), return false
    guard let userPremium else {
        return false
    }
    // here we have access to the non-optional
    return userPremium
}

// -----------------------------------

let isNewUser: Bool? = true
let isUserAuthorized: Bool? = false
let favouriteMovie: String? = "Harry Potter and the Sorcerer's Stone"

checkUserIsSetUp()
checkUserIsSetUp2()
checkUserIsSetUp3()
checkUserIsSetUp4()

func checkUserIsSetUp() -> Bool {
    // if isNewUser == Bool AND
    // isUserAuthorized == Bool AND
    // favouriteMovie == String, go to this closure
    if let isNewUser, let isUserAuthorized, let favouriteMovie {
        return checkUserStatus(
            newUser: isNewUser,
            userAuthorized: isUserAuthorized,
            favMovie: favouriteMovie
        )
    // if one of the condition is false, go to this closure
    }else{
        return false
    }
}

func checkUserIsSetUp2() -> Bool {
    // use guard
    guard let isNewUser, let isUserAuthorized, let favouriteMovie else {
        return false
    }
    return checkUserStatus(
        newUser: isNewUser,
        userAuthorized: isUserAuthorized,
        favMovie: favouriteMovie
    )
}

// layered if-let
func checkUserIsSetUp3() -> Bool {
    // if isNewUser == Bool
    if let isNewUser{
        // if isUserAuthorized == Bool
        if let isUserAuthorized{
            // if favouriteMovie == String
            if let favouriteMovie{
                return checkUserStatus(
                    newUser: isNewUser,
                    userAuthorized: isUserAuthorized,
                    favMovie: favouriteMovie
                )
            // if isUserAuthorized == nil
            }else{
                return false
            }
        // if isUserAuthorized == nil
        }else{
            return false
        }
    // if isUserAuthorized == nil
    }else{
        return false
    }
}

func checkUserIsSetUp4() -> Bool {
    // let's try use guard
    guard let isNewUser else{
        return false
    }
    guard let isUserAuthorized else{
        return false
    }
    guard let favouriteMovie else{
        return false
    }
    return checkUserStatus(
        newUser: isNewUser,
        userAuthorized: isUserAuthorized,
        favMovie: favouriteMovie
    )
}

func checkUserStatus(newUser: Bool?, userAuthorized: Bool?, favMovie: String?) -> Bool {
    if let newUser, let userAuthorized {
        return true
    }else{
        return false
    }
}

// optional chaining

getUserData()

func getUserName()->String?{
    return "Hello, Batam"
}

func getTitle()->String{
    return "Hello, ADA @ IL"
}

func getUserData(){
    let username: String? = getUserName()
    let length: Int? = username?.count
    
    let title: String = getTitle()
    let titleLength: Int? = title.count
    
    // if username has a value, and the first character is lowercase, then return the value of isLowerCase
    let lowerCase = username?.first?.isLowercase ?? false
}

// three things to unwrap optionals
// 1. nil coalescing
// 2. if let
// 3. guard
