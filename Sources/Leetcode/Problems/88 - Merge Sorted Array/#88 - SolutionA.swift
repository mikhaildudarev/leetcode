//  Created by Mikhail Dudarev on 01.06.2022.

extension Problem88MergeSortedArray {
    
    final class SolutionA: Problem88MergeSortedArraySolution {
        
        /// - Complexity: time O(m + n), space O(m + 2)
        func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
            let nums1Slice = nums1[..<m]
            var index1 = nums1Slice.startIndex
            var index2 = nums2.startIndex
            for index in (nums1.startIndex..<nums1.endIndex) {
                if index1 >= nums1Slice.endIndex {
                    nums1[index] = nums2[index2]
                    index2 += 1
                    continue
                }
                if index2 >= nums2.endIndex {
                    nums1[index] = nums1Slice[index1]
                    index1 += 1
                    continue
                }
                if nums1Slice[index1] < nums2[index2] {
                    nums1[index] = nums1Slice[index1]
                    index1 += 1
                } else {
                    nums1[index] = nums2[index2]
                    index2 += 1
                }
            }
        }
    }
    
}
