//   Created by Mikhail Dudarev on 29.06.2022.

extension Problem206 {
    
    final class SolutionA: Problem206Solution {
        
        func reverseList(_ head: Problem206.ListNode?) -> Problem206.ListNode? {
            guard let head = head else {
                return nil
            }
            var newHead = ListNode(head.val)
            var node = head.next
            while let val = node?.val {
                let prevNode = ListNode(val)
                prevNode.next = newHead
                newHead = prevNode
                node = node?.next
            }
            return newHead
        }
        
    }
    
}
