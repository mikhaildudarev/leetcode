//  Created by Mikhail Dudarev on 26.06.2022.

extension Problem141 {

    final class SolutionB: Problem141Solution {

        /// - Complexity: time O(N), space O(1)
        func hasCycle(_ head: Problem141.ListNode?) -> Bool {
            guard let head = head else {
                return false
            }
            var slow: Problem141.ListNode? = head
            var fast: Problem141.ListNode? = head.next
            while slow != fast {
                guard slow != nil && fast != nil else {
                    return false
                }
                slow = slow?.next
                fast = fast?.next?.next
            }
            return true
        }

    }

}
