//   Created by Mikhail Dudarev on 01.07.2022.

@testable import Leetcode
import XCTest

final class Problem83Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem83.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem83Solution) {
        XCTAssertEqual(solution.deleteDuplicates(Problem83.ListNode(from: [1, 1, 2])!)?.array, [1, 2])
        XCTAssertEqual(solution.deleteDuplicates(Problem83.ListNode(from: [1, 1, 2, 3, 3])!)?.array, [1, 2, 3])
    }
    
}

private extension Problem83.ListNode {
    
    convenience init?(from array: [Int]) {
        guard let firstValue = array.first else {
            return nil
        }
        self.init(firstValue)
        var node: Problem83.ListNode? = self
        for value in array.dropFirst() {
            node?.next = Problem83.ListNode(value)
            node = node?.next
        }
    }
    
    var array: [Int] {
        var node: Problem83.ListNode? = self
        var array = [Int]()
        while let val = node?.val {
            array.append(val)
            node = node?.next
        }
        return array
    }
    
}
