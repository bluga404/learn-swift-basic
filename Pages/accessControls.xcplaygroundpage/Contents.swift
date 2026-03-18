import Foundation

// Rule of thumb
// When writing code, we want everything to be as private as possible!
// This makes our code easier to read/debug and also a best practice

struct movieModel {
    var title: String
    var genre: movieGenre
    private(set) var isFavourite: Bool
    
    // function to update favourite status
    // return movieModel
    // beginner friendly
    func updateUserFavourite(newValue: Bool) -> movieModel{
        movieModel(title: title, genre: genre, isFavourite: newValue)
    }
    
    // more advanced
    // use private(set) type of access control
    mutating func updateUserFavourite2(newValue: Bool){
        isFavourite = newValue
    }
}

enum movieGenre {
    case Comedy, Romance, Horror
    
    var title: String {
        switch self{
        case .Comedy:
            return "Comedy"
        case .Romance:
            return "Romance"
        case .Horror:
            return "Horor"
        }
    }
}

class movieManager {
    
    // if not written, the access is public
    // we can get and set the value of this data outside the class
    var movie1: movieModel = movieModel(title: "Dumb and Dumber", genre: .Comedy, isFavourite: false)
    
    // private is access and can be accessed within the class
    private var movie2: movieModel = movieModel(title: "Forrest Gump", genre: .Horror, isFavourite: false)
    
    // private(set) means we can get the data outside of the class
    // but we can not set the data from outside of the class
    private(set) var movie3: movieModel = movieModel(title: "About Time", genre: .Romance, isFavourite: false)
    
    func updateMovie3(isFavourite: Bool){
        movie3.updateUserFavourite2(newValue: isFavourite)
    }
}

let manager = movieManager()

let someValue = manager.movie1

// use this to mutate the model using beginner level method
// manager.movie1 = manager.movie1.updateUserFavourite(newValue: true)

// use this for the more advance one
manager.movie1.updateUserFavourite2(newValue: true)

// VERSION 1
// We can GET and SET the data outside the class
let movieTitle = manager.movie1.title
manager.movie1.title = "Changed"

// VERSION 2
// We CAN'T GET and SET the data because the data is privately stated within the class

// VERSION 3
// We can GET the data, but we CAN'T SET the data
// if we want to SET the data, use the function stated within the class
// best practice
var user3Movie = manager.movie3
user3Movie.updateUserFavourite2(newValue: true)

// Private and Public by far are the most common type of access controls
//
// open
// public
// internal
// fileprivate
//
