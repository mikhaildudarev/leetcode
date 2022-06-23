//   Created by Mikhail Dudarev on 23.06.2022.

extension Problem74 {

    final class SolutionA: Problem74Solution {

        /// - Complexity: time `O(m + log (m * n))`, space `O(m * n)`
        func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
            let array = matrix.flatMap { $0 }
            var slice = array[..<array.endIndex]
            while slice.count > .zero {
                let index = slice.startIndex + slice.count / 2
                if slice[index] == target {
                    return true
                }
                if target > slice[index] {
                    slice = slice[index+1..<slice.endIndex]
                } else {
                    slice = slice[slice.startIndex..<index]
                }
            }
            return false
        }

    }

}
