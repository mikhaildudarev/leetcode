//  Created by Mikhail Dudarev on 07.06.2022.

extension Problem566ReshapeTheMatrix {
    
    final class SolutionA: Problem566ReshapeTheMatrixSolution {
        
        /// - Complexity: time O(r * c), space O(r * c)
        func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
            let oldRowCount = mat.count
            guard let oldColumnCount = mat.first?.count, oldRowCount * oldColumnCount == r * c else {
                return mat
            }
            
            var result = [[Int]]()
            for newRowIndex in 0..<r {
                let row = (0..<c).map { newColumnIndex -> Int in
                    let index = newRowIndex * c + newColumnIndex
                    let oldRowIndex = index / oldColumnCount
                    let oldColumnIndex = index % oldColumnCount
                    return mat[oldRowIndex][oldColumnIndex]
                }
                result.append(row)
            }
            return result
        }
        
    }
    
}
