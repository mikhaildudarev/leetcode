//  Created by Mikhail Dudarev on 09.06.2022.

@testable import Leetcode
import XCTest

final class Problem121BestTimeToBuyAndSellStockTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem121BestTimeToBuyAndSellStock.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem121BestTimeToBuyAndSellStockSolution) {
        XCTAssertEqual(solution.maxProfit([7, 1, 5, 3, 6, 4]), 5)
        XCTAssertEqual(solution.maxProfit([7, 6, 4, 3, 1]), 0)
    }
    
}
