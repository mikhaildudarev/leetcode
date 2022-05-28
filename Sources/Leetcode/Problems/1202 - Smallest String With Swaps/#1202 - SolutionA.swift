//  Created by Mikhail Dudarev on 28.05.2022.

import Algo

extension Problem1202SmallestStringWithSwaps {
    
    final class SolutionA: Problem1202SmallestStringWithSwapsSolution {
        
        /// - Complexity: time O(N), space O(N)
        func smallestStringWithSwaps(_ s: String, _ pairs: [[Int]]) -> String {
            let asciiValues = try! s.asciiValues()
            let set = DisjointSet.UnionByRank(Array(0..<asciiValues.count))
            for pair in pairs {
                try! set.union(pair[0], pair[1])
            }
            var asciiValuesByGroup = [Int: [UInt8]]()
            for element in set {
                let groupIndex = try! set.find(element)
                let asciiValue = asciiValues[element]
                if asciiValuesByGroup[groupIndex] == nil {
                    asciiValuesByGroup[groupIndex] = [asciiValue]
                } else {
                    asciiValuesByGroup[groupIndex]?.append(asciiValue)
                }
            }
            for group in asciiValuesByGroup.keys {
                asciiValuesByGroup[group]!.sort { $0 > $1 }
            }
            var resultAsciiValues = [UInt8]()
            resultAsciiValues.reserveCapacity(asciiValues.count)
            for index in 0..<asciiValues.count {
                let groupIndex = try! set.find(index)
                let asciiValue = asciiValuesByGroup[groupIndex]!.popLast()!
                resultAsciiValues.append(asciiValue)
            }
            let resultCharacters = resultAsciiValues.map { Character(Unicode.Scalar($0)) }
            return String(resultCharacters)
        }
        
    }
    
}
