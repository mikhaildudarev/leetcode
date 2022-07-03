//   Created by Mikhail Dudarev on 03.07.2022.

@testable import Leetcode
import XCTest

final class Problem232Tests: LeetcodeTests {
    
    func testSolutionA() {
        [test1, test2, test3].forEach { $0(Problem232.SolutionA()) }
    }
    
    func testSolutionB() {
        [test1, test2, test3].forEach { $0(Problem232.SolutionB()) }
    }
    
    private func test1(with solution: Problem232Solution) {
        solution.push(1)
        solution.push(2)
        XCTAssertEqual(solution.peek(), 1)
        XCTAssertEqual(solution.pop(), 1)
        XCTAssertFalse(solution.empty())
    }
    
    private func test2(with solution: Problem232Solution) {
        solution.push(1)
        solution.push(2)
        XCTAssertEqual(solution.pop(), 1)
        XCTAssertEqual(solution.peek(), 2)
    }
    
    private func test3(with solution: Problem232Solution) {
        solution.push(1)
        solution.push(2)
        XCTAssertEqual(solution.pop(), 1)
        solution.push(3)
        solution.push(4)
        XCTAssertEqual(solution.pop(), 2)
        XCTAssertEqual(solution.peek(), 3)
    }
    
}
