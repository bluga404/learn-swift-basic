import Foundation

let userName: String = "Walker"
let isUserPremium: Bool = true
let isUserNew: Bool = false

// return 1 data
//func printUserInfo() -> String {
//    userName; isUserPremium
//}

// use tuples to return 2 or more data
func getUserInfo() -> (name: String, userPremium: Bool, userNew: Bool) {
    let name = userName
    let userPremium = isUserPremium
    let userNew = isUserNew
    return (name, userPremium,userNew)
}

func doSomethingWithUserInfo (info: (name: String, userPremium: Bool, userNew: Bool)) -> (name: String, userPremium: Bool, userNew: Bool){
    let name = info.name
    let premium = info.userPremium
    let new = info.userNew
    return (name, premium, new)
}

let infoUser = getUserInfo()
doSomethingWithUserInfo(info: infoUser)
