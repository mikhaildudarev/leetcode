//  Created by Mikhail Dudarev on 27.04.2022.

extension Problem445AddTwoNumbersII {
    
    final class SolutionA: Problem445AddTwoNumbersIISolution {
        
        func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            guard l1 != nil || l2 != nil else {
                return nil
            }
            
            var l1 = l1?.reversed
            var l2 = l2?.reversed
            var overflow = Int.zero
            let firstNode: ListNode? = ListNode()
            var node = firstNode
            
            while node != nil {
                let val1 = l1?.val ?? .zero
                let val2 = l2?.val ?? .zero
                let sum = val1 + val2 + overflow
                
                node?.val = sum % 10
                overflow = sum / 10
                
                l1 = l1?.next
                l2 = l2?.next
                
                if l1 == nil && l2 == nil {
                    break
                }
                
                let nextNode = ListNode()
                node?.next = nextNode
                node = nextNode
            }
            
            if overflow > .zero {
                let nextNode = ListNode(overflow)
                node?.next = nextNode
                node = nextNode
            }
            
            return firstNode?.reversed
        }
        
        func addTwoNumbers(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
            let l1 = ListNode(from: arr1)
            let l2 = ListNode(from: arr2)
            return addTwoNumbers(l1, l2)?.values ?? []
        }
        
    }
    
}

private extension Problem445AddTwoNumbersII.ListNode {
    
    typealias ListNode = Problem445AddTwoNumbersII.ListNode
    
    convenience init?(from array: [Int]) {
        guard let firstVal = array.first else {
            return nil
        }
        let startNode = ListNode(firstVal)
        var node: ListNode? = startNode
        array.dropFirst().forEach {
            let nextNode = ListNode($0)
            node?.next = nextNode
            node = nextNode
        }
        
        self.init()
        val = startNode.val
        next = startNode.next
    }
    
    var values: [Int] {
        var result = [Int]()
        var node: ListNode? = self
        while let val = node?.val {
            result.append(val)
            node = node?.next
        }
        return result
    }
    
    var reversed: ListNode? {
        var result = ListNode(val)
        var node = self
        while let next = node.next {
            let prev = ListNode(next.val)
            prev.next = result
            result = prev
            node = next
        }
        return result
    }
    
}
