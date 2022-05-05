//  Created by Mikhail Dudarev on 05.05.2022.

@testable import Leetcode
import XCTest

final class Problem225ImplementStackUsingQueuesTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem225ImplementStackUsingQueues.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem225ImplementStackUsingQueuesSolution) {
        solution.push(1)
        solution.push(2)
        XCTAssertEqual(solution.top(), 2)
        XCTAssertEqual(solution.pop(), 2)
        XCTAssertFalse(solution.empty())
    }
    
}
