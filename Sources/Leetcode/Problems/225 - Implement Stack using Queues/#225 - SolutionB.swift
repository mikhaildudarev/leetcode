//  Created by Mikhail Dudarev on 05.05.2022.

import Algo

extension Problem225ImplementStackUsingQueues {
    
    final class SolutionB: Problem225ImplementStackUsingQueuesSolution {
        
        private var queue = Queue.Naive<Int>()
        private var tail: Int?
        
        init() {}
        
        /// - Complexity: O(1)
        func push(_ x: Int) {
            queue.enqueue(x)
            tail = x
        }
        
        /// - Complexity: O(N)
        func pop() -> Int {
            var result: Int? = nil
            let tempQueue = Queue.Naive<Int>()
            while let x = queue.dequeue() {
                result = x
                if queue.peek() != nil {
                    tempQueue.enqueue(x)
                    tail = x
                }
            }
            queue = tempQueue
            return result!
        }
        
        /// - Complexity: O(1)
        func top() -> Int {
            tail!
        }
        
        /// - Complexity: O(1)
        func empty() -> Bool {
            queue.peek() == nil
        }
        
    }
    
}
