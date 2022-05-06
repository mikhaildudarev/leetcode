//  Created by Mikhail Dudarev on 06.05.2022.

import Algo

extension Problem1209RemoveAllAdjacentDuplicatesInStringII {
    
    final class SolutionA: Problem1209RemoveAllAdjacentDuplicatesInStringIISolution {
        
        func removeDuplicates(_ s: String, _ k: Int) -> String {
            let stack = Stack.Naive<Element>()
            for character in s {
                guard let element = stack.peek(), element.character == character else {
                    stack.push(Element(character: character, count: 1))
                    continue
                }
                guard element.count >= k - 1 else {
                    stack.push(Element(character: character, count: element.count + 1))
                    continue
                }
                for _ in 0..<element.count {
                    stack.pop()
                }
            }
            return String(stack.map({ $0.character }).reversed())
        }
        
    }
    
    struct Element {
        let character: Character
        let count: Int
    }
    
}
