let returnMessage = {(name: String) -> String in
  return "Hello, \(name)!"
}

func sayHello(action: () -> String){
  print("Hey!")
  print(action())
  print("How are you?")
}

sayHello {
  returnMessage("Thiago")
}
