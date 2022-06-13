//  Created by Mikhail Dudarev on 13.06.2022.

/**
 # [118. Pascal's Triangle](https://leetcode.com/problems/pascals-triangle)
 
 ### Description
 Given an integer numRows, return the first numRows of Pascal's triangle. In Pascal's triangle, each number is the sum of the two numbers directly above.

 ### Example 1
 Input: numRows = 5
 Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
 
 ### Example 2
 Input: numRows = 1
 Output: [[1]]
  
 ### Constraints
 ```
 1 <= numRows <= 30
 ```
 */

struct Problem118PascalsTriangle {
    private init() {}
}

protocol Problem118PascalsTriangleSolution {
    func generate(_ numRows: Int) -> [[Int]]
}
