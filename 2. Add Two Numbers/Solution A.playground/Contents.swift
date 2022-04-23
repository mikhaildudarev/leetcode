/**
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Example 1:
 Input: l1 = [2,4,3], l2 = [5,6,4]
 Output: [7,0,8]
 Explanation: 342 + 465 = 807.
 
 Example 2:
 Input: l1 = [0], l2 = [0]
 Output: [0]
 
 Example 3:
 Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
 Output: [8,9,9,9,0,0,0,1]
 
 Constraints:
 The number of nodes in each linked list is in the range [1, 100].
 0 <= Node.val <= 9
 It is guaranteed that the list represents a number that does not have leading zeros.
 */

import Foundation

class Solution {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil || l2 != nil else {
            return nil
        }
        
        var l1 = l1
        var l2 = l2
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
        
        return firstNode
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
let arr1 = [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]
let arr2 = [5,6,4]
let result = solution.addTwoNumbers(arr1, arr2)
print(result)
