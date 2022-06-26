//   Created by Mikhail Dudarev on 26.06.2022.

extension Problem141 {

    final class SolutionA: Problem141Solution {

        /// - Complexity: time O(N), space O(N)
        func hasCycle(_ head: Problem141.ListNode?) -> Bool {
            var values = Set<ListNode>()
            var node = head
            while let unwrappedNode = node {
                guard !values.contains(unwrappedNode) else {
                    return true
                }
                values.insert(unwrappedNode)
                node = unwrappedNode.next
            }
            return false
        }

    }

}
