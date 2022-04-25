/**
 https://leetcode.com/problems/longest-common-prefix
 
 Write a function to find the longest common prefix string amongst an array of strings.
 If there is no common prefix, return an empty string "".

 Example 1:
 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 
 Example 2:
 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
  
 Constraints:
 1 <= strs.length <= 200
 0 <= strs[i].length <= 200
 strs[i] consists of only lower-case English letters.
 */

class Solution {
    
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

private extension Array where Element: Collection {
    
    var shortest: Element? {
        sorted(by: { $0.count < $1.count }).first
    }
    
}

// MARK: - Test Cases
let solution = Solution()
assert(solution.longestCommonPrefix(["flower","flow","flight"]) == "fl")
assert(solution.longestCommonPrefix(["dog","racecar","car"]) == "")
