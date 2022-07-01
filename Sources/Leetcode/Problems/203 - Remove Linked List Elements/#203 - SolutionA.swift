//   Created by Mikhail Dudarev on 01.07.2022.

extension Problem203 {
    
    final class SolutionA: Problem203Solution {
        
        func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
            var startNode = head
            while let startVal = startNode?.val, startVal == val {
                startNode = startNode?.next
            }
            var resultStartNode: ListNode?
            if let startNode = startNode {
                resultStartNode = ListNode(startNode.val)
            }
            var result = resultStartNode
            var node = startNode?.next
            while let value = node?.val {
                if value != val {
                    result?.next = ListNode(value)
                    result = result?.next
                }
                node = node?.next
            }
            return resultStartNode
        }
        
    }
    
}
