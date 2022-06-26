//   Created by Mikhail Dudarev on 26.06.2022.

/**
 # [21. Merge Two Sorted Lists](https://leetcode.com/problems/merge-two-sorted-lists)
 
 ### Description
 You are given the heads of two sorted linked lists list1 and list2.
 Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
 Return the head of the merged linked list.

 ### Example 1
 ```
 Input: list1 = [1,2,4], list2 = [1,3,4]
 Output: [1,1,2,3,4,4]
 ```
 
 ### Example 2
 ```
 Input: list1 = [], list2 = []
 Output: []
 ```
 
 ### Example 3
 ```
 Input: list1 = [], list2 = [0]
 Output: [0]
 ```

 ### Constraints:
 ```
 The number of nodes in both lists is in the range [0, 50].
 -100 <= Node.val <= 100
 Both list1 and list2 are sorted in non-decreasing order.
 ```
 */

struct Problem21 {
    private init() {}
}

protocol Problem21Solution {
    func mergeTwoLists(_ list1: Problem21.ListNode?, _ list2: Problem21.ListNode?) -> Problem21.ListNode?
}

extension Problem21 {
    
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
