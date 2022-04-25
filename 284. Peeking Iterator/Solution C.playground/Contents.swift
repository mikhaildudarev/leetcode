/**
 https://leetcode.com/problems/peeking-iterator
 
 Design an iterator that supports the peek operation on an existing iterator in addition to the hasNext and the next operations.

 Implement the PeekingIterator class:
 PeekingIterator(Iterator<int> nums) Initializes the object with the given integer iterator iterator.
 int next() Returns the next element in the array and moves the pointer to the next element.
 boolean hasNext() Returns true if there are still elements in the array.
 int peek() Returns the next element in the array without moving the pointer.
 
 Note: Each language may have a different implementation of the constructor and Iterator, but they all support the int next() and boolean hasNext() functions.

 Example 1:
 Input
 ["PeekingIterator", "next", "peek", "next", "next", "hasNext"]
 [[[1, 2, 3]], [], [], [], [], []]
 Output
 [null, 1, 2, 2, 3, false]

 Explanation
 PeekingIterator peekingIterator = new PeekingIterator([1, 2, 3]); // [1,2,3]
 peekingIterator.next();    // return 1, the pointer moves to the next element [1,2,3].
 peekingIterator.peek();    // return 2, the pointer does not move [1,2,3].
 peekingIterator.next();    // return 2, the pointer moves to the next element [1,2,3]
 peekingIterator.next();    // return 3, the pointer moves to the next element [1,2,3]
 peekingIterator.hasNext(); // return False
  
 Constraints:
 1 <= nums.length <= 1000
 1 <= nums[i] <= 1000
 All the calls to next and peek are valid.
 At most 1000 calls will be made to next, hasNext, and peek.
  
 Follow up: How would you extend your design to be generic and work with all types, not just integer?
 */

// Swift IndexingIterator reference:
// https://developer.apple.com/documentation/swift/indexingiterator

/**
 
 */
class PeekingIterator<Element> {
    
    private var iterator: IndexingIterator<Array<Element>>
    private var nextElement: Element?
    
    init(_ arr: IndexingIterator<Array<Element>>) {
        iterator = arr
        nextElement = iterator.next()
    }
    
    func next() -> Element {
        defer {
            nextElement = iterator.next()
        }
        return nextElement!
    }
    
    func peek() -> Element {
        nextElement!
    }
    
    func hasNext() -> Bool {
        nextElement != nil
    }
    
}

/**
 * Your PeekingIterator object will be instantiated and called as such:
 * let obj = PeekingIterator(arr)
 * let ret_1: Int = obj.next()
 * let ret_2: Int = obj.peek()
 * let ret_3: Bool = obj.hasNext()
 */

// Test Case #1
let intArray: [Int] = [1, 2, 3, 4, 5]
let intIterator = PeekingIterator(intArray.makeIterator())
assert(intIterator.hasNext())
assert(intIterator.next() == 1)
assert(intIterator.peek() == 2)
assert(intIterator.hasNext())
assert(intIterator.next() == 2)
assert(intIterator.next() == 3)
assert(intIterator.peek() == 4)
assert(intIterator.peek() == 4)
assert(intIterator.next() == 4)
assert(intIterator.next() == 5)
assert(!intIterator.hasNext())

// Test Case #2
let stringArray: [String] = ["a", "b", "c", "d", "e"]
let stringIterator = PeekingIterator(stringArray.makeIterator())
assert(stringIterator.hasNext())
assert(stringIterator.next() == "a")
assert(stringIterator.peek() == "b")
assert(stringIterator.hasNext())
assert(stringIterator.next() == "b")
assert(stringIterator.next() == "c")
assert(stringIterator.peek() == "d")
assert(stringIterator.peek() == "d")
assert(stringIterator.next() == "d")
assert(stringIterator.next() == "e")
assert(!stringIterator.hasNext())
