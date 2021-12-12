public class BSTNode<ANY>{
  // Attributes
  var data : ANY?
  var leftChild : BSTNode?
  var rightChild : BSTNode?

  // Constructor
  init(){
    data = nil
    leftChild =  nil
    rightChild = nil
  }

  init(_ data: ANY){
    self.data = data
    leftChild =  nil
    rightChild = nil
  }

}