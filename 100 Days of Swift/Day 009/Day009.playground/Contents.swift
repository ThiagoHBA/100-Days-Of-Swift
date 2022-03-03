import UIKit

struct Class{
    static var classSize = 0
    var studentName: String
    private var studentId: String
    
    init(studentName: String) {
        self.studentName = studentName
        self.studentId = String(Class.classSize * 314)
        Class.classSize += 1
    }
}

let ed = Class(studentName: "Ed")
let taylor = Class(studentName: "Taylor")

