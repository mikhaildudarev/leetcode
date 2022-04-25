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

class PeekingIterator {
    
    private var iterator: IndexingIterator<Array<Int>>
    private var peeked: Int?
    
    init(_ arr: IndexingIterator<Array<Int>>) {
        iterator = arr
    }
    
    func next() -> Int {
        guard let peeked = peeked else {
            return iterator.next()!
        }
        self.peeked = nil
        return peeked
    }
    
    func peek() -> Int {
        guard let peeked = peeked else {
            peeked = iterator.next()
            return peeked!
        }
        return peeked
    }
    
    func hasNext() -> Bool {
        guard peeked != nil else {
            peeked = iterator.next()
            return peeked != nil
        }
        return true
    }
    
}

/**
 * Your PeekingIterator object will be instantiated and called as such:
 * let obj = PeekingIterator(arr)
 * let ret_1: Int = obj.next()
 * let ret_2: Int = obj.peek()
 * let ret_3: Bool = obj.hasNext()
 */

let arr: [Int] = [1, 2, 3, 4, 5]
let iterator = PeekingIterator(arr.makeIterator())
assert(iterator.hasNext())
assert(iterator.next() == 1)
assert(iterator.peek() == 2)
assert(iterator.hasNext())
assert(iterator.next() == 2)
assert(iterator.next() == 3)
assert(iterator.peek() == 4)
assert(iterator.peek() == 4)
assert(iterator.next() == 4)
assert(iterator.next() == 5)
assert(!iterator.hasNext())
