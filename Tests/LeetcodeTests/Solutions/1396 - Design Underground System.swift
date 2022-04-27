//  Created by Mikhail Dudarev on 27.04.2022.

@testable import Leetcode
import XCTest

final class Problem1396DesignUndergroundSystemTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem1396DesignUndergroundSystem.SolutionA()
        test1(with: solution)
        test2(with: solution)
    }
    
    private func test1(with solution: Problem1396DesignUndergroundSystemSolution) {
        solution.checkIn(45, "Leyton", 3)
        solution.checkIn(32, "Paradise", 8)
        solution.checkIn(27, "Leyton", 10)
        solution.checkOut(45, "Waterloo", 15)
        solution.checkOut(27, "Waterloo", 20)
        solution.checkOut(32, "Cambridge", 22)
        XCTAssertEqual(solution.getAverageTime("Paradise", "Cambridge"), 14)
        XCTAssertEqual(solution.getAverageTime("Leyton", "Waterloo"), 11)
        solution.checkIn(10, "Leyton", 24)
        XCTAssertEqual(solution.getAverageTime("Leyton", "Waterloo"), 11)
        solution.checkOut(10, "Waterloo", 38)
        XCTAssertEqual(solution.getAverageTime("Leyton", "Waterloo"), 12)
    }
    
    private func test2(with solution: Problem1396DesignUndergroundSystemSolution) {
        solution.checkIn(10, "Leyton", 3)
        solution.checkOut(10, "Paradise", 8)
        XCTAssertEqual(solution.getAverageTime("Leyton", "Paradise"), 5)
        solution.checkIn(5, "Leyton", 10)
        solution.checkOut(5, "Paradise", 16)
        XCTAssertEqual(solution.getAverageTime("Leyton", "Paradise"), 5.5)
        solution.checkIn(2, "Leyton", 21)
        solution.checkOut(2, "Paradise", 30)
        XCTAssertTrue(solution.getAverageTime("Leyton", "Paradise") ~== 6.66667)
    }
    
}

private extension Double {
    
    static func ~==(_ lhs: Double, _ rhs: Double) -> Bool {
        fabs(lhs - rhs) < pow(10, 5)
    }
    
}

