// Q7.
// What is the runtime of foo and bar in the following code? Explain your reasoning.
// Answer on canvas

func foo(arr: [Int]) {
  for val in arr { // 
    print(val)
  }
}
/*
 The runtime is big O(n) because there is only one for loop inside of this function
 */

func bar(arr: [Int]) { // O(n^2)
  for val in arr { // O(n)
    foo(arr: arr) // O(n)
  }
  for val in arr { // O(n)
    foo(arr: arr) //O(n)
  }
}
/*
 The runtime for this is will be O(n^2) "big O of N squared. This is because inside of the bar function there are 2 for loops which have a run time of O(n) but inside of both them they call on the foo function inside of them.. I am going to assume that the for loop being written twice was a error so that makes it O(n^2)
 */
