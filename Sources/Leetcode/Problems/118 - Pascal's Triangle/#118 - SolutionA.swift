//  Created by Mikhail Dudarev on 13.06.2022.

extension Problem118PascalsTriangle {
    
    final class SolutionA: Problem118PascalsTriangleSolution {
        
        /// - Complexity: time O(numRows ^ 2), space O(1)
        func generate(_ numRows: Int) -> [[Int]] {
            var triangle = [[Int]]()
            for rowIndex in 0..<numRows {
                var row = [Int](repeating: 1, count: rowIndex + 1)
                for index in stride(from: 1, to: row.endIndex - 1, by: 1) {
                    let prevRow = triangle[rowIndex - 1]
                    row[index] = prevRow[index - 1] + prevRow[index]
                }
                triangle.append(row)
            }
            return triangle
        }
        
    }
    
}
