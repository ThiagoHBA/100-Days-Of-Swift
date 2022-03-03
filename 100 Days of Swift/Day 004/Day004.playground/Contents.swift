let numbers = 1...10

outerLoop: for number in numbers{
  print(number)
  for inNumber in numbers{
    print(inNumber)
    break outerLoop
  }
}
