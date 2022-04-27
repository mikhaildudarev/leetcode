//  Created by Mikhail Dudarev on 27.04.2022.

extension Problem9PalindromeNumber {
    
    final class SolutionA: Problem9PalindromeNumberSolution {
        
        func isPalindrome(_ x: Int) -> Bool {
            guard x >= .zero else {
                return false
            }
            let digits = x.digits
            let count = digits.count
            for index in (0..<count/2) {
                if digits[index] != digits[count-index-1] {
                    return false
                }
            }
            return true
        }
        
    }
    
}
