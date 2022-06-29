//   Created by Mikhail Dudarev on 29.06.2022.

@testable import Leetcode
import XCTest

final class Problem206Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem206.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem206Solution) {
        XCTAssertEqual(
            solution.reverseList(Problem206.ListNode(from: [1, 2, 3, 4, 5]))?.array,
            [5, 4, 3, 2, 1]
        )
        XCTAssertEqual(
            solution.reverseList(Problem206.ListNode(from: [1, 2]))?.array,
            [2, 1]
        )
        XCTAssertEqual(
            solution.reverseList(Problem206.ListNode(from: []))?.array,
            nil
        )
    }
    
}

private extension Problem206.ListNode {
    
    convenience init?(from array: [Int]) {
        guard let firstValue = array.first else {
            return nil
        }
        self.init(firstValue)
        var node: Problem206.ListNode? = self
        for value in array.dropFirst() {
            node?.next = Problem206.ListNode(value)
            node = node?.next
        }
    }
    
    var array: [Int] {
        var node: Problem206.ListNode? = self
        var array = [Int]()
        while let val = node?.val {
            array.append(val)
            node = node?.next
        }
        return array
    }
    
}
