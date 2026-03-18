import Foundation

// Classes are SLOWER than Structs!
// Classes are reference types
// Allocated in the heap

// For example we have a screenViewModel class
class screenViewModel {
    let title: String
    private(set) var showButton: Bool
    
    // in classes we have to implicitly write the initializer
    // not like Struct which have an implicit initializer
    init(title: String, showButton: Bool){
        self.title = title
        self.showButton = showButton
    }
    
    deinit{
        // runs as the object is being removed from memory
        // structs do not have deinit
    }
    
    func hideButton(){
        showButton = false
    }
    
    func updateShowButton(newValue: Bool){
        showButton = newValue
    }
}

// instead of using var to copy the object,
// we use let, because we are changing the data inside an object
// not the object itself
let viewModel: screenViewModel = screenViewModel(title: "Screen1", showButton: true)
//viewModel.showButton = false
let value = viewModel.showButton

// clean coding practice
viewModel.hideButton()
viewModel.updateShowButton(newValue: true)
