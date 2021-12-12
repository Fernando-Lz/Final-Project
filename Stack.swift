public class Stack<ANY: Equatable>{
  // Atributtes
  private var data : Array<ANY>
  
  public var count : Int {
    return data.count
  }

  public var isEmpty : Bool {
    return data.isEmpty
  }

  // Constructor
  init() {
    data = []
  }

  init(_ array : Array<ANY>) {
    data = array
  }

  // Methods
  func push(_ object : ANY?) {
    if (object == nil) {
      print("Cannot add nil to the stack :(")
    }
    else {
      data.append(object!)
    }
  }

  func pop() -> ANY?{
    if (isEmpty) {
      print("Cannot pop from an empty stack :(")
      return nil
    }
    else {
      return data.remove(at: count-1)
    }
  }

  func peek() -> ANY?{
    if (isEmpty) {
      return nil
    }
    else {
      return data.last!
    }
  }

  func getAt(_ index : Int) -> ANY? {
    if (isEmpty) {
      return nil
    }
    else {
      if (index < 0 || index > count) {
        return nil
      } 
      else {
        return data[index]
      }   
    }     
  }

  func indexOf(_ object : ANY?) -> Int? {
    if (object == nil) {
      print("Cannot search nil in stack")
      return nil
    }
    else {
      return data.firstIndex(of: object!)
    }
  }
  
  func ocurrences(_ object : ANY?) -> Int {
    var counter = 0
    if (object == nil) {
      print("Cannot search nil in stack")
      return 0
    }
    else {
      for element in data {
        if element == object{
          counter += 1
        } 
      }
      return counter
    }
  }
}