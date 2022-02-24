import UIKit

var beatles = Set<String>()
var colors = Dictionary<String, Int>()

beatles = ["paul", "ringo", "john", "george"]
colors["1"] = 111
colors["2"] = 222
colors["3"] = 333

enum Enumeration {
    case success(value: Bool)}

var fail = Enumeration.success(value: false)

enum ColorsPerArea: String {
    case top = "Red"
    case middle = "Blue"
    case bottom = "Yellow"
}

let topColor = ColorsPerArea.top.rawValue
let middleColor = ColorsPerArea.middle.rawValue
let bottomColor = ColorsPerArea.bottom.rawValue
