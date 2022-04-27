//  Created by Mikhail Dudarev on 27.04.2022.

extension Problem14LongestCommonPrefix {
    
    final class SolutionA: Problem14LongestCommonPrefixSolution {
        
        func longestCommonPrefix(_ strs: [String]) -> String {
            guard var commonPrefix = strs.shortest else {
                return ""
            }
            
            while !commonPrefix.isEmpty {
                if strs.allSatisfy({ $0.hasPrefix(commonPrefix) }) {
                    break
                }
                commonPrefix.removeLast()
            }
            
            return commonPrefix
        }
        
    }
    
}
