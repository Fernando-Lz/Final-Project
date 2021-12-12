public class Deque<ANY: Equatable> {
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
  func enqueue(_ object : ANY?) {
    if (object == nil) {
      print("Cannot add nil to the deque")
    }
    else {
      data.append(object!)
    }
  }

  func addFirst(_ object : ANY?) {
    if (object == nil) {
      print("Cannot add nil to the deque")
    }
    else {
      data.insert(object!, at: 0)
    }
  }
  
  func dequeue() -> ANY? {
    if (isEmpty) {
      return nil
    }
    else {
      return data.remove(at: 0)
    }
  }

  func removeLast() -> ANY? {
    if (isEmpty) {
      return nil
    }
    else {
      return data.remove(at: count-1)
    }
  }

  func getAt(_ index : Int) -> ANY? {
    if (index < 0 || index > count || isEmpty) {
      return nil
    } 
    else {
      return data[index]
    }   
  }

  func indexOf(_ object : ANY?) -> Int? {
    if (object == nil) {
      print("Cannot search nil in deque")
      return nil
    }
    else {
      return data.firstIndex(of: object!)
    }
  }
  
  func ocurrences(_ object : ANY?) -> Int {
    var counter = 0
    if (object == nil) {
      print("Cannot search nil in deque")
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