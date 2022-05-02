//  Created by Mikhail Dudarev on 01.05.2022.

extension Problem844BackspaceStringCompare {
    
    final class SolutionB: Problem844BackspaceStringCompareSolution {
        
        func backspaceCompare(_ s: String, _ t: String) -> Bool {
            var sIndex = s.index(s.endIndex, offsetBy: -1, limitedBy: s.startIndex)
            var tIndex = t.index(t.endIndex, offsetBy: -1, limitedBy: t.startIndex)
            
            var sSkipCounter = Int.zero
            var tSkipCounter = Int.zero
            
            while sIndex != nil || tIndex != nil {
                while let sUnwrappedIndex = sIndex {
                    if s[sUnwrappedIndex] == "#" {
                        sSkipCounter += 1
                        sIndex = s.index(sUnwrappedIndex, offsetBy: -1, limitedBy: s.startIndex)
                    } else if sSkipCounter > .zero {
                        sSkipCounter -= 1
                        sIndex = s.index(sUnwrappedIndex, offsetBy: -1, limitedBy: s.startIndex)
                    } else {
                        break
                    }
                }
                
                while let tUnwrappedIndex = tIndex {
                    if t[tUnwrappedIndex] == "#" {
                        tSkipCounter += 1
                        tIndex = t.index(tUnwrappedIndex, offsetBy: -1, limitedBy: t.startIndex)
                    } else if tSkipCounter > .zero {
                        tSkipCounter -= 1
                        tIndex = t.index(tUnwrappedIndex, offsetBy: -1, limitedBy: t.startIndex)
                    } else {
                        break
                    }
                }
                
                if let sIndex = sIndex, let tIndex = tIndex, s[sIndex] != t[tIndex] {
                    return false
                }
                
                if (sIndex == nil) != (tIndex == nil) {
                    return false
                }
                
                if let sUnwrappedIndex = sIndex {
                    sIndex = s.index(sUnwrappedIndex, offsetBy: -1, limitedBy: s.startIndex)
                }
                
                if let tUnwrappedIndex = tIndex {
                    tIndex = t.index(tUnwrappedIndex, offsetBy: -1, limitedBy: t.startIndex)
                }
            }
            
            return true
        }
        
    }
    
}
