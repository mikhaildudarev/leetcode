//   Created by Mikhail Dudarev on 24.06.2022.

extension Problem242 {

    final class SolutionA: Problem242Solution {

        /// - Complexity: time O(`3 * N`), space O(N)
        func isAnagram(_ s: String, _ t: String) -> Bool {
            var counts = [Character: Int]()
            for character in s {
                if counts[character] == nil {
                    counts[character] = 1
                } else {
                    counts[character]! += 1
                }
            }
            for character in t {
                if counts[character] == nil || counts[character] == .zero {
                    return false
                } else {
                    counts[character]! -= 1
                }
            }
            return counts.values.allSatisfy { $0 == .zero }
        }

    }

}
