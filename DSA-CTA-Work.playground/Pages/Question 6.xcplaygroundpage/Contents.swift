// Q6.
// Implement a function that accepts an array of integers as an argument.
// This function should return the sum of each integer in the array.
// Your solution should be **recursive**. Your function must be pure (cannot use global variables)
// Sample Input [5, 2, 9, 11]
// Sample Output: 27


func recursiveSum(arr: [Int], index: Int) -> Int {
    // need to keep track of index in order to change it each time it is called
    
      var sum = 0
    
    // want the value at the current index plus ...
    if index <= 0 {
        // a condition
           // once there is nothing inside then it should return 0
        return sum
    }
    
      let newIndex = index - 1
    // index gets changed once recursive function gets call
    print("This is the new index right after it is declared\(newIndex)")
    
// each time function gets called we are rewriting the values of sum completely. 
    sum = recursiveSum(arr: arr, index: newIndex) + arr[newIndex]
    print("This is the new index right after it the recurvive call \(newIndex)")

    print(sum)
    return sum
    
}



let arr = [5, 2, 9, 11]
recursiveSum(arr: arr, index: arr.count)
