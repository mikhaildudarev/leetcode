//  Created by Mikhail Dudarev on 28.05.2022.

extension Problem268MissingNumber {
    
    final class SolutionA: Problem268MissingNumberSolution {
        
        /// - Complexity: time O(N), space O(1)
        func missingNumber(_ nums: [Int]) -> Int {
            (0..<nums.count).reduce(0) { $0 + $1 - nums[$1] } + nums.count
        }
        
    }
    
}
