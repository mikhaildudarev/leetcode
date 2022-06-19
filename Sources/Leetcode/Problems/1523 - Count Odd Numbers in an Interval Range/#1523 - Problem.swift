//  Created by Mikhail Dudarev on 17.06.2022.

/**
 # [1523. Count Odd Numbers in an Interval Range](https://leetcode.com/problems/count-odd-numbers-in-an-interval-range)
 
 ### Description
 Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).

 ### Example 1
 Input: low = 3, high = 7
 Output: 3
 Explanation: The odd numbers between 3 and 7 are [3,5,7].
 
 ### Example 2
 Input: low = 8, high = 10
 Output: 1
 Explanation: The odd numbers between 8 and 10 are [9].

 Constraints:
 ```
 0 <= low <= high <= 10^9
 ```
 */

struct Problem1523CountOddNumbersInAnIntervalRange {
    private init() {}
}

protocol Problem1523CountOddNumbersInAnIntervalRangeSolution {
    func countOdds(_ low: Int, _ high: Int) -> Int
}
