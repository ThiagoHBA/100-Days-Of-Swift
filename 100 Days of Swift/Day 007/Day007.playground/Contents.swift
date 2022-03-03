func sayHello() -> (String) -> Void {
    var countCumpriments = 0
    return {
        print(countCumpriments < 4 ? "Hello, \($0)" : "For god sake, Hello, \($0)!!!")
        countCumpriments += 1
    }
}

let hello = sayHello()

hello("Thiago")
hello("Thiago")
hello("Thiago")
hello("Thiago")
hello("Thiago")

