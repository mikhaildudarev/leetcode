//  Created by Mikhail Dudarev on 27.04.2022.

@testable import Leetcode
import XCTest

final class Problem284PeekingIteratorTests: LeetcodeTests {
    
    private let intArray = [1, 2, 3, 4, 5]
    private let stringArray = [1, 2, 3, 4, 5]
    
    func testSolutionA() {
        test(with: Problem284PeekingIterator.SolutionA(intArray.makeIterator()), arr: intArray)
        test(with: Problem284PeekingIterator.SolutionA(stringArray.makeIterator()), arr: stringArray)
    }
    
    func testSolutionB() {
        test(with: Problem284PeekingIterator.SolutionB(intArray.makeIterator()), arr: intArray)
        test(with: Problem284PeekingIterator.SolutionB(stringArray.makeIterator()), arr: stringArray)
    }
    
    private func test<Solution: Problem284PeekingIteratorSolution>(with solution: Solution, arr: [Solution.Element]) {
        XCTAssertTrue(solution.hasNext())
        XCTAssertEqual(solution.next(), arr[0])
        XCTAssertEqual(solution.peek(), arr[1])
        XCTAssertTrue(solution.hasNext())
        XCTAssertEqual(solution.next(), arr[1])
        XCTAssertEqual(solution.next(), arr[2])
        XCTAssertEqual(solution.peek(), arr[3])
        XCTAssertEqual(solution.peek(), arr[3])
        XCTAssertEqual(solution.next(), arr[3])
        XCTAssertEqual(solution.next(), arr[4])
        XCTAssertFalse(solution.hasNext())
    }
    
}
