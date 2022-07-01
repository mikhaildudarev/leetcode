//   Created by Mikhail Dudarev on 01.07.2022.

/**
 # [83. Remove Duplicates from Sorted List](https://leetcode.com/problems/remove-duplicates-from-sorted-list)
 
 ### Description
 Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.

 ### Example 1
 Input: head = [1,1,2]
 Output: [1,2]
 
 ### Example 2
 Input: head = [1,1,2,3,3]
 Output: [1,2,3]

 ### Constraints:
 ```
 The number of nodes in the list is in the range [0, 300].
 -100 <= Node.val <= 100
 The list is guaranteed to be sorted in ascending order.
 ```
 */

struct Problem83 {
    private init() {}
}

protocol Problem83Solution {
    typealias ListNode = Problem83.ListNode
    func deleteDuplicates(_ head: ListNode?) -> ListNode?
}

extension Problem83 {
    
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
