//  Created by Mikhail Dudarev on 27.04.2022.

/**
 # [445 - Add Two Numbers II](https://leetcode.com/problems/add-two-numbers-ii)
 
 ### Description
 You are given two non-empty linked lists representing two non-negative integers. The most significant digit comes first and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 ### Example 1
 Input: l1 = [7,2,4,3], l2 = [5,6,4]
 Output: [7,8,0,7]
 
 ### Example 2
 Input: l1 = [2,4,3], l2 = [5,6,4]
 Output: [8,0,7]
 
 ### Example 3
 Input: l1 = [0], l2 = [0]
 Output: [0]
  
 ### Constraints
 The number of nodes in each linked list is in the range [1, 100].
 0 <= Node.val <= 9
 It is guaranteed that the list represents a number that does not have leading zeros.
  
 ###Follow up
 Could you solve it without reversing the input lists?
 */

struct Problem445AddTwoNumbersII {
    private init() {}
}

protocol Problem445AddTwoNumbersIISolution {
    func addTwoNumbers(
        _ l1: Problem445AddTwoNumbersII.ListNode?,
        _ l2: Problem445AddTwoNumbersII.ListNode?
    ) -> Problem445AddTwoNumbersII.ListNode?
    
    func addTwoNumbers(_ arr1: [Int], _ arr2: [Int]) -> [Int]
}

extension Problem445AddTwoNumbersII {
    
    class ListNode {
        
        var val: Int
        var next: ListNode?
        
        init() {
            self.val = Int.zero
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
    
}
