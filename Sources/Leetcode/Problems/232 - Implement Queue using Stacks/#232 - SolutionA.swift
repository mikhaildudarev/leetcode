//   Created by Mikhail Dudarev on 03.07.2022.

import Algo

extension Problem232 {
    
    /// - Complexity: time O(N), space O(N)
    final class SolutionA: Problem232Solution {
        
        let stack1: Stack.Naive<Int>
        let stack2: Stack.Naive<Int>
        
        init() {
            stack1 = Stack.Naive<Int>()
            stack2 = Stack.Naive<Int>()
        }
        
        /// - Complexity: time O(1), space O(1)
        func push(_ x: Int) {
            stack1.push(x)
        }
        
        /// - Complexity: time O(N), space O(N)
        func pop() -> Int {
            while let element = stack1.pop() {
                stack2.push(element)
            }
            let result = stack2.pop()!
            while let element = stack2.pop() {
                stack1.push(element)
            }
            return result
        }
        
        /// - Complexity: time O(N), space O(N)
        func peek() -> Int {
            while let element = stack1.pop() {
                stack2.push(element)
            }
            let result = stack2.peek()!
            while let element = stack2.pop() {
                stack1.push(element)
            }
            return result
        }
        
        /// - Complexity: time O(1), space O(1)
        func empty() -> Bool {
            stack1.peek() == nil
        }
    }
    
}
