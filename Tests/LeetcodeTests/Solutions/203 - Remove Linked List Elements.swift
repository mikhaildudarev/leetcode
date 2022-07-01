//   Created by Mikhail Dudarev on 01.07.2022.

@testable import Leetcode
import XCTest

final class Problem203Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem203.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem203Solution) {
        XCTAssertEqual(
            solution.removeElements(Problem203.ListNode(from: [1,2,6,3,4,5,6])!, 6)?.array,
            [1, 2, 3, 4, 5]
        )
        XCTAssertEqual(
            solution.removeElements(nil, 1)?.array,
            nil
        )
        XCTAssertEqual(
            solution.removeElements(Problem203.ListNode(from: [7, 7, 7, 7])!, 7)?.array,
            nil
        )
    }
    
}

private extension Problem203.ListNode {
    
    convenience init?(from array: [Int]) {
        guard let firstValue = array.first else {
            return nil
        }
        self.init(firstValue)
        var node: Problem203.ListNode? = self
        for value in array.dropFirst() {
            node?.next = Problem203.ListNode(value)
            node = node?.next
        }
    }
    
    var array: [Int] {
        var node: Problem203.ListNode? = self
        var array = [Int]()
        while let val = node?.val {
            array.append(val)
            node = node?.next
        }
        return array
    }
    
}
