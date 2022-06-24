//   Created by Mikhail Dudarev on 24.06.2022.

extension Problem387 {

    final class SolutionA: Problem387Solution {

        /// - Complexity: time O(N), space O(1)
        func firstUniqChar(_ s: String) -> Int {
            var counts = [Int](repeating: .zero, count: 26)
            for character in s {
                counts[character.latinLowercaseIndex()!] += 1
            }
            for (index, character) in s.enumerated() {
                if counts[character.latinLowercaseIndex()!] == 1 {
                    return index
                }
            }
            return -1
        }

    }

}

extension Character {
    
    func latinLowercaseIndex() -> Int? {
        guard let asciiValue = asciiValue else {
            return nil
        }
        return Int(asciiValue - Character("a").asciiValue!)
    }
    
}
