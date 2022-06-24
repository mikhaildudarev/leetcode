//   Created by Mikhail Dudarev on 24.06.2022.

/**
 # [#387 - Problem](https://leetcode.com/problems/first-unique-character-in-a-string)
 
 ### Description
 Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

 ### Example 1
 Input: s = "leetcode"
 Output: 0
 
 ### Example 2
 Input: s = "loveleetcode"
 Output: 2
 
 ### Example 3
 Input: s = "aabb"
 Output: -1

 ### Constraints:
 ```
 1 <= s.length <= 105
 s consists of only lowercase English letters.
 ```
 */

struct Problem387 {
    private init() {}
}

protocol Problem387Solution {
    func firstUniqChar(_ s: String) -> Int
}
