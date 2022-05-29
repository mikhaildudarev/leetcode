//  Created by Mikhail Dudarev on 29.05.2022.

extension Problem318MaximumProductOfWordLengths {
    
    final class SolutionA: Problem318MaximumProductOfWordLengthsSolution {
        
        /// - Complexity: time O(N^2), space O(N)
        func maxProduct(_ words: [String]) -> Int {
            let asciiWords = words.map { try! $0.asciiValues() }
            let sets = asciiWords.map { Set($0) }
            
            var maxCandidate = Int.zero
            for i in 0..<sets.count - 1 {
                for j in i + 1..<sets.count {
                    if !sets[i].isDisjoint(with: sets[j]) {
                        continue
                    }
                    let candidate = asciiWords[i].count * asciiWords[j].count
                    if candidate > maxCandidate {
                        maxCandidate = candidate
                    }
                }
            }
            
            return maxCandidate
        }
        
    }
    
}
