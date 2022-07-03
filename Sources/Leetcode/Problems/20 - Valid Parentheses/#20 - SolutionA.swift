//   Created by Mikhail Dudarev on 03.07.2022.

import Algo

extension Problem20 {

    final class SolutionA: Problem20Solution {
        
        let closingBracketToOpeningBracket = [
            Character(")"): Character("("),
            Character("]"): Character("["),
            Character("}"): Character("{")
        ]

        /// - Complexity: time O(N), space O(N)
        func isValid(_ s: String) -> Bool {
            let stack = Stack.Naive<Character>()
            for character in s {
                guard let openingBracket = closingBracketToOpeningBracket[character] else {
                    stack.push(character)
                    continue
                }
                if stack.pop() != openingBracket {
                    return false
                }
            }
            return stack.peek() == nil
        }

    }

}
