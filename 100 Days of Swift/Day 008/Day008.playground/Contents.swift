import UIKit

struct Band {
    var leadGuitar: String
    var soloGuitar: String
    var bassPlayer: String
    var vocalist: String
    var drummer: String
    
    
    mutating func acousticShow(){
        drummer = ""
    }
}

var theBeatles = Band(
    leadGuitar: "John",
    soloGuitar: "George",
    bassPlayer: "Paul",
    vocalist: "Paul/John",
    drummer: "Ringo"
)

theBeatles.acousticShow()

let arrayTest = ["John", "Paul"]

print(arrayTest.sorted())
