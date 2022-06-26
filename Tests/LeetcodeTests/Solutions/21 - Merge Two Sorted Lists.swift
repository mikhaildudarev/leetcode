//   Created by Mikhail Dudarev on 26.06.2022.

@testable import Leetcode
import XCTest

final class Problem21Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem21.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem21Solution) {
        let result1 = solution.mergeTwoLists(Problem21.ListNode(from: [1, 2, 4]),  Problem21.ListNode(from: [1, 3, 4]))
        XCTAssertEqual(result1?.array ?? [], [1,1,2,3,4,4])
        
        let result2 = solution.mergeTwoLists(Problem21.ListNode(from: []),  Problem21.ListNode(from: []))
        XCTAssertEqual(result2?.array ?? [], [])
        
        let result3 = solution.mergeTwoLists(Problem21.ListNode(from: []),  Problem21.ListNode(from: [0]))
        XCTAssertEqual(result3?.array ?? [], [0])
    }
    
}

private extension Problem21.ListNode {
    
    convenience init?(from array: [Int]) {
        guard let firstValue = array.first else {
            return nil
        }
        self.init(firstValue)
        var node: Problem21.ListNode? = self
        for value in array.dropFirst() {
            node?.next = Problem21.ListNode(value)
            node = node?.next
        }
    }
    
    var array: [Int] {
        var node: Problem21.ListNode? = self
        var array = [Int]()
        while let val = node?.val {
            array.append(val)
            node = node?.next
        }
        return array
    }
    
}
