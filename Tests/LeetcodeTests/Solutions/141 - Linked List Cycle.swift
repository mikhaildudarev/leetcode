//   Created by Mikhail Dudarev on 26.06.2022.

@testable import Leetcode
import XCTest

final class Problem141Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem141.SolutionA()
        test(with: solution)
    }
    
    func testSolutionB() {
        let solution = Problem141.SolutionB()
        test(with: solution)
    }
    
    private func test(with solution: Problem141Solution) {
        let head1 = Problem141.ListNode(from: [3, 2, 0, -4])
        head1?.tail?.next = head1?.next(at: 1)
        XCTAssertTrue(solution.hasCycle(head1))
        
        let head2 = Problem141.ListNode(from: [1, 2])
        head2?.tail?.next = head2?.next(at: 0)
        XCTAssertTrue(solution.hasCycle(head2))
        
        let head3 = Problem141.ListNode(from: [1])
        // pos == -1, so we don't append anything here
        XCTAssertFalse(solution.hasCycle(head3))
        
        let head4 = Problem141.ListNode(from: [])
        // pos == -1, so we don't append anything here
        XCTAssertFalse(solution.hasCycle(head4))
    }
    
}

private extension Problem141.ListNode {
    
    var tail: Problem141.ListNode? {
        var result = self
        while let next = result.next {
            result = next
        }
        return result
    }
    
    convenience init?(from array: [Int]) {
        guard let firstValue = array.first else {
            return nil
        }
        self.init(firstValue)
        next = array.dropFirst().reduce(into: Problem141.ListNode(array[0])) {
            $0.next = Problem141.ListNode($1)
        }
    }
    
    // TODO: write generic LinkedList in Algo and conform it to Collection protocol
    func next(at distance: Int) -> Problem141.ListNode? {
        var step = Int.zero
        var result = self
        while step < distance {
            guard let next = next else {
                return nil
            }
            result = next
            step += 1
        }
        return result
    }
    
}
