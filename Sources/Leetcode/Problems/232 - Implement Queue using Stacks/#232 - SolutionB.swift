//   Created by Mikhail Dudarev on 03.07.2022.

import Algo

extension Problem232 {
    
    /// - Complexity: time amortized O(1) worst-case O(N), space O(1)
    final class SolutionB: Problem232Solution {
        
        let stack1: Stack.Naive<Int>
        let stack2: Stack.Naive<Int>
        var front: Int?
        
        init() {
            stack1 = Stack.Naive<Int>()
            stack2 = Stack.Naive<Int>()
        }
        
        /// - Complexity: time O(1), space O(1)
        func push(_ x: Int) {
            if stack1.peek() == nil {
                front = x
            }
            stack1.push(x)
        }
        
        /// - Complexity: time amortized O(1) worst-case O(N), space O(1)
        func pop() -> Int {
            if stack2.peek() == nil {
                while let element = stack1.pop() {
                    stack2.push(element)
                }
            }
            return stack2.pop()!
        }
        
        /// - Complexity: time O(1), space O(1)
        func peek() -> Int {
            if let element = stack2.peek() {
                return element
            }
            return front!
        }
        
        /// - Complexity: time O(1), space O(1)
        func empty() -> Bool {
            stack1.peek() == nil && stack2.peek() == nil
        }
    }
    
}
