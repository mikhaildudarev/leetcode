//  Created by Mikhail Dudarev on 02.05.2022.

extension Problem905SortArrayByParity {
    
    final class SolutionA: Problem905SortArrayByParitySolution {
        
        func sortArrayByParity(_ nums: [Int]) -> [Int] {
            var evenNumbers = [Int]()
            evenNumbers.reserveCapacity(nums.count / 2)
            
            var oddNumbers = [Int]()
            oddNumbers.reserveCapacity(nums.count / 2)
            
            for num in nums {
                if num % 2 == 0 {
                    evenNumbers.append(num)
                } else {
                    oddNumbers.append(num)
                }
            }
            
            return evenNumbers + oddNumbers
        }
        
    }
    
}
