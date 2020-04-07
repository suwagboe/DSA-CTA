// Q3.
// Write a function sum that takes a Stack of numbers as input, and returns the sum of all elements.
// Input:
// 3
// 4
// 8
// 1
// 4
//
// Output: 20

struct Stack<T> {
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
    var isEmpty: Bool {
        return arr.isEmpty
    }
    private var arr: [T] = []
}

extension Stack {
    
    func sumOfNum(_ stack: Stack<Int>) -> Int  {
  // var sum = T
        var copyyyy = stack
        
        var sum = 0
        // need a copy of a stack
        guard !copyyyy.isEmpty else { return 0 }
        
        while !copyyyy.isEmpty {
            guard let popped = copyyyy.pop() else {
               return 0
        }
             sum += popped
            
        }
        
        return sum
    }
    
    
} // end of extension


var stack = Stack<Int> ()
stack.push(1)
stack.push(4)
stack.push(6)
stack.push(8)
stack.push(90)


stack.sumOfNum(stack)
