//  Created by Mikhail Dudarev on 09.06.2022.

extension Problem350IntersectionOfTwoArraysII {
    
    final class SolutionA: Problem350IntersectionOfTwoArraysIISolution {
        
        /// - Complexity: time O(N log N), space O(N)
        func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
            guard !nums1.isEmpty && !nums2.isEmpty else {
                return []
            }
            var result = [Int]()
            let sortedNums1 = nums1.sorted()
            let sortedNums2 = nums2.sorted()
            var index1 = sortedNums1.startIndex
            var index2 = sortedNums2.startIndex
            while index1 < sortedNums1.count && index2 < sortedNums2.count {
                while sortedNums2[index2] < sortedNums1[index1] && index2 < sortedNums2.count - 1 {
                    index2 += 1
                }
                if sortedNums1[index1] == sortedNums2[index2] {
                    result.append(sortedNums1[index1])
                    index2 += 1
                }
                index1 += 1
            }
            return result
        }
        
    }
    
}
