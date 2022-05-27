//  Created by Mikhail Dudarev on 27.05.2022.

@testable import Leetcode
import XCTest

final class Problem1101EarliestMomentWhenEveryoneBecomeFriendsTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem1101EarliestMomentWhenEveryoneBecomeFriends.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem1101EarliestMomentWhenEveryoneBecomeFriendsSolution) {
        XCTAssertEqual(solution.earliestAcq([
            [20190101, 0, 1],
            [20190104, 3, 4],
            [20190107, 2, 3],
            [20190211, 1, 5],
            [20190224, 2, 4],
            [20190301, 0, 3],
            [20190312, 1, 2],
            [20190322, 4, 5]
        ], 6), 20190301)
        XCTAssertEqual(solution.earliestAcq([[0, 2, 0], [1, 0, 1], [3, 0, 3], [4, 1, 2], [7, 3, 1]], 4), 3)
    }
    
}
