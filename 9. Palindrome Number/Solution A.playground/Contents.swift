/**
 https://leetcode.com/problems/palindrome-number
 
 Given an integer x, return true if x is palindrome integer.

 An integer is a palindrome when it reads the same backward as forward.
 For example, 121 is a palindrome while 123 is not.
  
 Example 1:
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 
 Example 2:
 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 
 Example 3:
 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
  
 Constraints:
 -231 <= x <= 231 - 1
  
 Follow up: Could you solve it without converting the integer to a string?
 */

class Solution {
    
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

extension Int {
    
    var digits: [Int] {
        guard self != .zero else {
            return [.zero]
        }
        var result = [Int]()
        var number = self
        while number > .zero {
            let lastDigit = number % 10
            number = number / 10
            result.insert(lastDigit, at: .zero)
        }
        return result
    }
    
}

// MARK: - Test Cases
let solution = Solution()
assert(solution.isPalindrome(121) == true)
assert(solution.isPalindrome(-121) == false)
assert(solution.isPalindrome(10) == false)
assert(solution.isPalindrome(0) == true)
assert(solution.isPalindrome(12345) == false)
assert(solution.isPalindrome(12321) == true)
assert(solution.isPalindrome(123456) == false)
assert(solution.isPalindrome(123321) == true)


