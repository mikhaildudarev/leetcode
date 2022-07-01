//   Created by Mikhail Dudarev on 01.07.2022.

/**
 # [203. Remove Linked List Elements](https://leetcode.com/problems/remove-linked-list-elements)
 
 ### Description
 Given the head of a linked list and an integer val, remove all the nodes of the linked list that has Node.val == val, and return the new head.

 ### Example 1
 Input: head = [1,2,6,3,4,5,6], val = 6
 Output: [1,2,3,4,5]
 
 ### Example 2
 Input: head = [], val = 1
 Output: []
 
 ### Example 3
 Input: head = [7,7,7,7], val = 7
 Output: []

 ### Constraints:
 ```
 The number of nodes in the list is in the range [0, 10^4].
 1 <= Node.val <= 50
 0 <= val <= 50
 ```
 */

struct Problem203 {
    private init() {}
}

protocol Problem203Solution {
    typealias ListNode = Problem203.ListNode
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode?
}

extension Problem203 {
    
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
    
}
