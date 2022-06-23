//   Created by Mikhail Dudarev on 23.06.2022.

extension Problem36 {

    final class SolutionA: Problem36Solution {

        /// - Complexity: time O(N), space O(N)
        func isValidSudoku(_ board: [[Character]]) -> Bool {
            var rowNumbers = [Set<Int>](repeating: [], count: 9)
            var colNumbers = [Set<Int>](repeating: [], count: 9)
            var segmentNumbers = [Set<Int>](repeating: [], count: 9)
            for i in board.startIndex..<board.endIndex {
                for j in board[i].startIndex..<board[i].endIndex {
                    guard let num = board[i][j].wholeNumberValue else {
                        continue
                    }
                    guard !rowNumbers[i].contains(num) && !colNumbers[j].contains(num) else {
                        return false
                    }
                    rowNumbers[i].insert(num)
                    colNumbers[j].insert(num)
                    
                    let iSegment = i / 3
                    let jSegment = j / 3
                    let segmentIndex = iSegment * 3 + jSegment
                    guard !segmentNumbers[segmentIndex].contains(num) else {
                        return false
                    }
                    segmentNumbers[segmentIndex].insert(num)
                }
            }
            return true
        }

    }

}
