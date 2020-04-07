// Q4.
// Write a function `range` that takes in a Queue of numbers, returns the range (difference between the minimum and maximum).
//Input:
// BACK 4 2 9 6 5 FRONT
//
// Output:
// 7
// Explanation: The max is 9, the min is 2, and their difference is 7

public struct Queue<T> {
  private var array = [T?]()
  private var head = 0

  public var isEmpty: Bool {
    return count == 0
  }

  public var count: Int {
    return array.count - head
  }

  public mutating func enqueue(_ element: T) {
    array.append(element)
  }

  public mutating func dequeue() -> T? {
    guard let element = array[guarded: head] else { return nil }
    array[head] = nil
    head += 1
    let percentage = Double(head)/Double(array.count)
    if array.count > 50 && percentage > 0.25 {
      array.removeFirst(head)
      head = 0
    }
    return element
  }
  public var front: T? {
    if isEmpty {
      return nil
    } else {
      return array[head]
    }
  }
}

// what does this mean???
extension Array {
    subscript(guarded idx: Int) -> Element? {
        guard (startIndex..<endIndex).contains(idx) else {
            return nil
        }
        return self[idx]
    }
}

  
func highestValue(in queue: Queue<Int>) -> Int{
     var qCopy = queue // this copy gives access to the the q parameter
    
    guard var frontValue = qCopy.front  else {
           return 0
       }
       
       while let endValue = qCopy.dequeue() {
           if frontValue < endValue {
               frontValue = endValue
           }
       }
       return frontValue
}

func lowestVale(in queue: Queue<Int>) -> Int{
    var qCopy = queue // this copy gives access to the the q parameter
    guard var lowestVale = qCopy.front else {
         return 0
     }
     
     while let num = qCopy.dequeue() {
         if lowestVale > num {
             lowestVale = num
         }
     }
     return lowestVale
}

func difference(highestVal: Int, lowestVal: Int) -> Int{
    print("\(highestVal) - \(lowestVal)")
   return highestVal - lowestVal
    
}

func rangeeee(in queue: Queue<Int>) -> Int {
  let highestVal = highestValue(in: queue)
   let lowestVal = lowestVale(in: queue)
    
    // call difference inside of the function
    
  return difference(highestVal: highestVal, lowestVal: lowestVal)
}

var queueNum = Queue<Int>()
queueNum.enqueue(1)
queueNum.enqueue(20)
queueNum.enqueue(3)
queueNum.enqueue(13)

rangeeee(in: queueNum)
