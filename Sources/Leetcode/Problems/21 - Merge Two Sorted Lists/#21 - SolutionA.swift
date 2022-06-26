//   Created by Mikhail Dudarev on 26.06.2022.

extension Problem21 {

    final class SolutionA: Problem21Solution {

        /// - Complexity: time O(N), space O(1)
        func mergeTwoLists(_ list1: Problem21.ListNode?, _ list2: Problem21.ListNode?) -> Problem21.ListNode? {
            var firstNode: Problem21.ListNode? = nil
            var node1 = list1
            var node2 = list2
            
            if let val1 = node1?.val, let val2 = node2?.val {
                if val1 < val2 {
                    firstNode = node1
                    node1 = node1?.next
                } else {
                    firstNode = node2
                    node2 = node2?.next
                }
            } else if node1 != nil {
                firstNode = node1
                node1 = node1?.next
            } else if node2 != nil {
                firstNode = node2
                node2 = node2?.next
            }
            
            var result = firstNode
            
            while node1 != nil || node2 != nil {
                let val1 = node1?.val ?? Int.max
                let val2 = node2?.val ?? Int.max
                if val1 < val2 {
                    result?.next = node1
                    node1 = node1?.next
                } else {
                    result?.next = node2
                    node2 = node2?.next
                }
                result = result?.next
            }
            
            return firstNode
        }

    }

}
