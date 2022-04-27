//  Created by Mikhail Dudarev on 27.04.2022.

extension Problem1TwoSum {
    
    final class SolutionA: Problem1TwoSumSolution {
        
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            var expectedSecondNumbers = [Int: Int]()
            for (index, num) in nums.enumerated() {
                guard let resultIndex = expectedSecondNumbers[num] else {
                    expectedSecondNumbers[target - num] = index
                    continue
                }
                return [index, resultIndex]
            }
            return []
        }
        
    }
    
}
