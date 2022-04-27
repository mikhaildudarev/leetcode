//  Created by Mikhail Dudarev on 27.04.2022.

@testable import Leetcode
import XCTest

final class Problem535EncodeAndDecodeTinyUrlTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem535EncodeAndDecodeTinyUrl.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem535EncodeAndDecodeTinyUrlSolution) {
        let originalUrl = "https://leetcode.com/problems/design-tinyurl"
        let encodedUrl = solution.encode(originalUrl)
        let decodedUrl = solution.decode(encodedUrl)
        XCTAssertEqual(decodedUrl, originalUrl)
    }
    
}
