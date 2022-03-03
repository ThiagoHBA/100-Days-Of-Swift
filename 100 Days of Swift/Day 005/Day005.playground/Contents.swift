class User{
  var name: String;
  var id: String;

  init(name: String, id: String){
    self.name = name
    self.id = id
  }
}

enum PasswordError: Error {
    case empty
    case short
    case long
    case noError
}

func createUser(userName: String, password: String) throws -> User{
  let isValidPassword: PasswordError = checkPassword(password)
  
  if isValidPassword != PasswordError.noError{
    throw isValidPassword
  }

  return User(name: userName, id: String(Int.random(in: 1..<100000)))
}

func checkPassword(_ password: String) -> PasswordError{
  if(!password.isEmpty){
    if(password.count < 4){
      return PasswordError.short
    } else if(password.count > 15){
      return PasswordError.long
    }
    return PasswordError.noError;
  }
  return PasswordError.empty
}

do{
  let newUser: User = try createUser(userName: "Thiago", password: "11241231")
  print("The user id is: \(newUser.id)")
} catch PasswordError.empty{
  print("Please, input a password")
} catch PasswordError.short{
  print("Please, use a longer password")
} catch PasswordError.long{
  print("Please, use a shorter password")
}
 
