/**
 https://leetcode.com/problems/add-two-numbers-ii/
 
 You are given two non-empty linked lists representing two non-negative integers. The most significant digit comes first and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Example 1:
 Input: l1 = [7,2,4,3], l2 = [5,6,4]
 Output: [7,8,0,7]
 
 Example 2:
 Input: l1 = [2,4,3], l2 = [5,6,4]
 Output: [8,0,7]
 
 Example 3:
 Input: l1 = [0], l2 = [0]
 Output: [0]
  
 Constraints:
 The number of nodes in each linked list is in the range [1, 100].
 0 <= Node.val <= 9
 It is guaranteed that the list represents a number that does not have leading zeros.
  
 Follow up: Could you solve it without reversing the input lists?
 */

import Foundation

// Suboptimal solution based on existing codebase for https://leetcode.com/problems/add-two-numbers/
class Solution {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil || l2 != nil else {
            return nil
        }
        
        var l1 = l1?.reversed
        var l2 = l2?.reversed
        var overflow = Int.zero
        let firstNode: ListNode? = ListNode()
        var node = firstNode
        
        while node != nil {
            let val1 = l1?.val ?? .zero
            let val2 = l2?.val ?? .zero
            let sum = val1 + val2 + overflow
            
            node?.val = sum % 10
            overflow = sum / 10
            
            l1 = l1?.next
            l2 = l2?.next
            
            if l1 == nil && l2 == nil {
                break
            }
            
            let nextNode = ListNode()
            node?.next = nextNode
            node = nextNode
        }
        
        if overflow > .zero {
            let nextNode = ListNode(overflow)
            node?.next = nextNode
            node = nextNode
        }
        
        return firstNode?.reversed
    }
    
}

class ListNode {
    
    var val: Int
    var next: ListNode?

    init() {
        self.val = 0
        self.next = nil
    }

    init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
    
}

extension ListNode {
    
    convenience init?(from array: [Int]) {
        guard let firstVal = array.first else {
            return nil
        }
        let startNode = ListNode(firstVal)
        var node: ListNode? = startNode
        array.dropFirst().forEach {
            let nextNode = ListNode($0)
            node?.next = nextNode
            node = nextNode
        }
        
        self.init()
        val = startNode.val
        next = startNode.next
    }
    
}

extension ListNode {
    
    var reversed: ListNode? {
        var result = ListNode(val)
        var node = self
        while let next = node.next {
            let prev = ListNode(next.val)
            prev.next = result
            result = prev
            node = next
        }
        return result
    }
    
}

extension ListNode {
    
    var values: [Int] {
        var result = [Int]()
        var node: ListNode? = self
        while let val = node?.val {
            result.append(val)
            node = node?.next
        }
        return result
    }
    
}

extension Solution {
    
    func addTwoNumbers(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        let l1 = ListNode(from: arr1)
        let l2 = ListNode(from: arr2)
        return addTwoNumbers(l1, l2)?.values ?? []
    }
    
}

let solution = Solution()
let arr1 = [7,2,4,3]
let arr2 = [5,6,4]
let result = solution.addTwoNumbers(arr1, arr2)
print(result)
