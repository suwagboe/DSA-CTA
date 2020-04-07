// Question 1 :
// Q1.
// Given a linked list, write a function to traverse it and print each value in order.

class Node<T> {
    var next: Node?
    let val: T
    init(val: T) {
        self.val = val
    }
    
}
//
//extension Node {
//    // ??!!! confused
//
//    guard let next = next else { // guard optional binding to store the value IF there is a value.
//                //
//                return "\(value) -> nil " // 12 -> nil
//            }
//            // if there is a value for the node then you come to this line.
//
//            return "\(value) -> \(next)"
//            // after it checks the first one it starts over and the value becomes the next value and it will check if there is a value.
//        }
//

// Print format:

/*
-> 4 -> 9 -> 2 -> 3 -> nil
*/


