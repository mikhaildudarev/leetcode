//   Created by Mikhail Dudarev on 01.07.2022.

extension Problem83 {
    
    final class SolutionA: Problem83Solution {
        
        /// - Complexity: time O(N), space O(N)
        func deleteDuplicates(_ head: ListNode?) -> ListNode? {
            guard let head = head else {
                return nil
            }
            let result = ListNode(head.val)
            var prevNode: ListNode? = result
            var node = head.next
            while let val = node?.val {
                if prevNode?.val != val {
                    prevNode?.next = ListNode(val)
                    prevNode = prevNode?.next
                }
                node = node?.next
            }
            return result
        }
        
    }
    
}
