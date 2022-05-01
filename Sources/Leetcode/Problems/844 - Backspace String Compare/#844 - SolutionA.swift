//  Created by Mikhail Dudarev on 01.05.2022.

extension Problem844BackspaceStringCompare {
    
    final class SolutionA: Problem844BackspaceStringCompareSolution {
        
        func backspaceCompare(_ s: String, _ t: String) -> Bool {
            s.removingBackspaces() == t.removingBackspaces()
        }
        
    }
    
}

private extension String {
    
    func removingBackspaces() -> String {
        var result = [Character]()
        for char in self {
            guard char != "#" else {
                result = result.dropLast()
                continue
            }
            result.append(char)
        }
        return String(result)
    }
    
}
