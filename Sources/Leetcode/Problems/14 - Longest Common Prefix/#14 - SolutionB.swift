//  Created by Mikhail Dudarev on 27.04.2022.

import Foundation

extension Problem14LongestCommonPrefix {
 
    final class SolutionB: Problem14LongestCommonPrefixSolution {
        
        func longestCommonPrefix(_ strs: [String]) -> String {
            let asciiArrays = strs.map {
                str in str.compactMap { $0.asciiValue }
            }
            guard let shortestAsciiArray = asciiArrays.shortest else {
                return ""
            }
            var commonPrefix = ""
            for (index, asciiValue) in shortestAsciiArray.enumerated() {
                if !asciiArrays.allSatisfy({ $0[index] == asciiValue }) {
                    break
                }
                commonPrefix.append(Character(UnicodeScalar(asciiValue)))
            }
            return commonPrefix
        }
        
    }
    
}
