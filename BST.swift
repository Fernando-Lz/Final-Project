public class BST<ANY: Comparable>{
  // Atributtes
  var root : BSTNode<ANY>? 
  var counter: Int = 0

  var count : Int {
    return counter
  }

  var isEmpty : Bool {
    if (root?.data == nil) {
      return true
    }
    return false
  }

  // Constructor
  init() {
    root = BSTNode<ANY>()
    counter += 1
  }

  init(_ data : ANY) {
    root = BSTNode<ANY>(data)
    
  }

  // Methods
  func insert(_ object: ANY?) {
    if (object == nil) {
      print("Cannot add nil to the tree")
    } 
    else {
      // If root is empty
      if (root?.data == nil) {
        root?.data = object!
      }
      else {
        let newNode = BSTNode(object!)
        insert(root!, newNode)
        counter += 1
      }
    }
  }

  private func insert(_ currentNode: BSTNode<ANY>?, _ newNode: BSTNode<ANY>) {
    // Checks if the newNode is lesser
    if currentNode!.data! > newNode.data! {
      // Inserts node if leftChild is nil
      if(currentNode?.leftChild == nil){
        currentNode?.leftChild = newNode
      } 
      // Recurssion to add the child in correct place
      else {
        insert(currentNode?.leftChild, newNode)
      }
    }
    else {
      // Inserts node if rightChild is nil
      if(currentNode?.rightChild == nil){
        currentNode?.rightChild = newNode
      } 
      // Recurssion to add the child in correct place
      else {
        insert(currentNode?.rightChild, newNode)
      }
    }
  }

  func remove(_ value : ANY?) {
    if(value == nil){
      print("Cannot search nil in the tree")
      return
    }
    else{
      if (isEmpty) {
        print("Cannot remove from empty tree")
        return
      }
    } 
    root = remove(root!, value!)
    counter -= 1
  }
  
  private func remove(_ currentNode : BSTNode<ANY>?, _ value : ANY) -> BSTNode<ANY>? {
    if (currentNode == nil) {
      return currentNode
    }
    // Checks if value is lesser than current node
    if (currentNode!.data! > value) {
      // Recurssion to find the value
      currentNode?.leftChild = remove(currentNode?.leftChild, value)
    }
    else {
      // Checks if value is greater than current node
      if (currentNode!.data! < value){
        // Recurssion to find the value
        currentNode?.rightChild = remove(currentNode?.rightChild, value)
      }
    }
    // If value was found
    if (value == currentNode!.data!) {
      // If currentNode does not have childs
      if (currentNode!.leftChild == nil && currentNode!.rightChild == nil) {
        return nil
      }

      // If current node have one child
      if (currentNode!.leftChild == nil){
        return currentNode?.rightChild
      }
      else
      {
        if (currentNode!.rightChild == nil){
          return currentNode?.leftChild
        }
      }

      // If current node has two childs
      currentNode?.data! = minValue(currentNode?.rightChild)!

      currentNode?.rightChild = remove(currentNode?.rightChild, (currentNode?.data)!)
    }
    return currentNode
  }

  // Loops to find the smaller value 
  private func minValue(_ currentNode: BSTNode<ANY>?) -> ANY? {
    var temp = currentNode
    
    while (temp?.leftChild != nil) {
      temp = temp?.leftChild
    }
    return temp?.data
  }

  func search(_ value : ANY) {
    search(root, value)
  }

  private func search(_ currentNode: BSTNode<ANY>?, _ value: ANY) {
    guard let currentNode =  currentNode
    else {
      print("Value was not found\n")
      return
    }

    print("Current node data: \(currentNode.data!)")

    if value > currentNode.data! {
      search(currentNode.rightChild, value)
    }
    else {
      if value < currentNode.data! {
      search(currentNode.leftChild, value)
      }
    }
    if(value == currentNode.data!){
      print("Value was found\n")
    }
  }

  func inOrder() {
    print("---IN-ORDER---")
    inOrder(root)
    print("\n")
  }

  private func inOrder(_ currentNode: BSTNode<ANY>?) {
    guard let _ = currentNode else { return }
    inOrder(currentNode?.leftChild)
    print("\(currentNode!.data!)", terminator: " ")
    inOrder(currentNode?.rightChild)
  }
  
  func preOrder() {
    print("---PRE-ORDER---")
    preOrder(root)
    print("\n")
  }

  private func preOrder(_ currentNode: BSTNode<ANY>?) {
    guard let _ = currentNode else { return }
    print("\(currentNode!.data!)", terminator: " ")
    preOrder(currentNode?.leftChild)
    preOrder(currentNode?.rightChild)
  }

  func postOrder() {
    print("---POST-ORDER---")
    postOrder(root)
    print("\n")
  }

  private func postOrder(_ currentNode: BSTNode<ANY>?) {
    guard let _ = currentNode else { return }
    postOrder(currentNode?.leftChild)
    postOrder(currentNode?.rightChild)
    print("\(currentNode!.data!)", terminator: " ")
  }
}