var queue = Queue<String>()
var deque = Deque<Int>()
var stack = Stack<Int>()
var tree = BST<Int>()
// Auxiliar var to store the results of the methods
var result : Any?

print("-----QUEUE-----")
queue.enqueue("2")
queue.enqueue("3")
queue.enqueue("4")
queue.enqueue("5")
queue.enqueue("5")
queue.enqueue("5")
queue.enqueue("5")

// Looks the first element
result = queue.getAt(0)
if (result == nil) {
  print("Value not found")
} else {
  print("Value at position [0]: \(result!)")
}

// Prints the length
print("Length of the queue: \(queue.count)")

// Checks if queue is empty, if not dequeue
if (queue.isEmpty) {
  print("Queue is empty")
} else {
  print("Value dequeued: \(queue.dequeue()!)")
}

// Looks the first element after dequeue
result = queue.getAt(0)
if (result == nil) {
  print("Value not found")
} else {
  print("Value at position [0]: \(result!)")
}

// Looks for element at an inexistent position
result = queue.getAt(9)
if (result == nil) {
  print("Value not found")
} else {
  print("Value at position [9]: \(result!)")
}

// Prints the length
print("Length of the queue: \(queue.count)")

// Searches index of inexistent value
result = queue.indexOf("10")
if (result == nil) {
  print("Value not found")
} else {
  print("Index of '10': \(result!)")
}

// Searches index of existent value
result = queue.indexOf("4")
if (result == nil) {
  print("Value not found")
} else {
  print("Index of '4': \(result!)")
}

// Number of ocurrences
result = queue.ocurrences("5")
print("Ocurrences of '5': \(result!)")

//////////////////////////////////////////////////////////
print("\n-----DEQUE-----")
deque.enqueue(1)
deque.enqueue(2)
deque.enqueue(3)
deque.enqueue(4)
deque.enqueue(4)
deque.enqueue(4)
deque.enqueue(5)
// Looks the first element
result = deque.getAt(0)
if (result == nil) {
  print("Value not found")
} else {
  print("Value at position [0]: \(result!)")
}

deque.addFirst(10)
// Looks the first element after adding one at the beggining of the structure
result = deque.getAt(0)
if (result == nil) {
  print("Value not found")
} else {
  print("Value at position [0]: \(result!)")
}

// Prints the length
print("Length of the deque: \(deque.count)")

// Dequeue and remove last

if (deque.isEmpty) {
  print("Deque is emtpy")
} else {
  result = deque.dequeue()
  print("Value dequeued: \(result!)")
}

result = deque.removeLast()
if (deque.isEmpty) {
  print("Deque is emtpy")
} else {
  print("Last value removed: \(result!)")
}

// Prints the length after removing elements
print("Length of the deque: \(deque.count)")

// Searches index of inexistent value
result = deque.indexOf(10)
if (result == nil) {
  print("Value not found")
} else {
  print("Index of '10': \(result!)")
}

// Searches index of existent value
result = deque.indexOf(4)
if (result == nil) {
  print("Value not found")
} else {
  print("Index of '4': \(result!)")
}

// Number of ocurrences
result = deque.ocurrences(4)
print("Ocurrences of 4: \(result!)")

//////////////////////////////////////////////////////////
print("\n-----STACK-----")
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(3)
stack.push(4)
stack.push(4)
stack.push(4)
stack.push(5)
// Looks the last element
result = stack.peek()
if (result == nil) {
  print("Value not found")
} else {
  print("Value at the top: \(result!)")
}

// Prints the length
print("Length of the stack: \(stack.count)")

// Checks if stack is empty, if not pop
if (stack.isEmpty) {
  print("Stack is empty")
} else {
  print("Value poped: \(stack.pop()!)")
}

// Looks the last element after pop
result = stack.peek()
if (result == nil) {
  print("Value not found")
} else {
  print("Value at the top: \(result!)")
}

// Prints the length after pop
print("Length of the stack: \(stack.count)")

// Looks for element at an inexistent position
result = stack.getAt(9)
if (result == nil) {
  print("Value not found")
} else {
  print("Value at position [9]: \(result!)")
}

// Looks for element at an existent position
result = stack.getAt(6)
if (result == nil) {
  print("Value not found")
} else {
  print("Value at position [6]: \(result!)")
}

// Searches index of inexistent value
result = stack.indexOf(10)
if (result == nil) {
  print("Value not found")
} else {
  print("Index of '10': \(result!)")
}

// Searches index of existent value
result = stack.indexOf(4)
if (result == nil) {
  print("Value not found")
} else {
  print("Index of '4': \(result!)")
}

// Number of ocurrences
result = stack.ocurrences(4)
print("Ocurrences of '4': \(result!)")

//////////////////////////////////////////////////////////
print("\n-----TREE-----")
// Check is tree is empty
if(tree.isEmpty){
  print("Tree is empty\n")
} else {
  print("Tree is not empty\n")
}
tree.insert(5)
tree.insert(3)
tree.insert(2)
tree.insert(4)
tree.insert(7)
tree.insert(6)
tree.insert(8)

// Check is tree is empty after insertin values
if(tree.isEmpty){
  print("Tree is empty\n")
} else {
  print("Tree is not empty\n")
}
// Prints the tree in different orders
tree.inOrder()
tree.preOrder()
tree.postOrder()

// Searches for inexistent value showing the path taken
tree.search(10)

// Searches for existent value showing the path taken
tree.search(6)

// Prints the length of the tree
print("Length of the tree: \(tree.count)")
// Remove leaf
tree.remove(2)
// Remove root
tree.remove(5)
// Prints the length of the tree after removing nodes
print("Length of the tree: \(tree.count)")

// Prints the tree to see the elements deleted
tree.inOrder()

