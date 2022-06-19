//  Created by Mikhail Dudarev on 17.06.2022.

extension Problem1523CountOddNumbersInAnIntervalRange {
    
    final class SolutionA: Problem1523CountOddNumbersInAnIntervalRangeSolution {
        
        /// - Complexity: time O(N / 2), space O(1)
        func countOdds(_ low: Int, _ high: Int) -> Int {
            let start = low % 2 == 1 ? low : low + 1
            return stride(from: start, through: high, by: 2).reduce(Int.zero) { count, _ in count + 1 }
        }
        
    }
    
}
