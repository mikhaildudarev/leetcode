//  Created by Mikhail Dudarev on 05.05.2022.

import Algo

extension Problem225ImplementStackUsingQueues {
    
    final class SolutionA: Problem225ImplementStackUsingQueuesSolution {
        
        private var queue = Queue.Naive<Int>()
        
        init() {}
        
        func push(_ x: Int) {
            queue.enqueue(x)
        }
        
        /// - Complexity: O(N)
        func pop() -> Int {
            var result: Int? = nil
            let tempQueue = Queue.Naive<Int>()
            while let x = queue.dequeue() {
                result = x
                if queue.peek() != nil {
                    tempQueue.enqueue(x)
                }
            }
            queue = tempQueue
            return result!
        }
        
        /// - Complexity: O(N)
        func top() -> Int {
            var result: Int? = nil
            let tempQueue = Queue.Naive<Int>()
            while let x = queue.dequeue() {
                result = x
                tempQueue.enqueue(x)
            }
            queue = tempQueue
            return result!
        }
        
        func empty() -> Bool {
            queue.peek() == nil
        }
        
    }
    
}
