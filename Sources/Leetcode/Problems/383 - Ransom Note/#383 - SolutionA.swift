//   Created by Mikhail Dudarev on 24.06.2022.

extension Problem383 {

    final class SolutionA: Problem383Solution {

        /// - Complexity: time O(N), space O(1)
        func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
            var magazineCounts = [Int](repeating: .zero, count: 26)
            for character in magazine {
                let index = character.latinLowercaseIndex()!
                magazineCounts[index] += 1
            }
            for character in ransomNote {
                let index = character.latinLowercaseIndex()!
                magazineCounts[index] -= 1
                if magazineCounts[index] < .zero {
                    return false
                }
            }
            return true
        }

    }

}
