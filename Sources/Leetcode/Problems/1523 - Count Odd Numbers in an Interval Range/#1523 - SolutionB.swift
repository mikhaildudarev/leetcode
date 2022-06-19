//  Created by Mikhail Dudarev on 19.06.2022.

extension Problem1523CountOddNumbersInAnIntervalRange {
    
    final class SolutionB: Problem1523CountOddNumbersInAnIntervalRangeSolution {
        
        /// - Complexity: time O(1), space O(1)
        func countOdds(_ low: Int, _ high: Int) -> Int {
            low % 2 == .zero && high % 2 == .zero ? (high - low) / 2 : (high - low) / 2 + 1
        }
        
    }
    
}
