//  Created by Mikhail Dudarev on 01.05.2022.

extension Problem844BackspaceStringCompare {
    
    final class SolutionA: Problem844BackspaceStringCompareSolution {
        
        func backspaceCompare(_ s: String, _ t: String) -> Bool {
            s.charactersByRemovingBackspaces() == t.charactersByRemovingBackspaces()
        }
        
    }
    
}

private extension String {
    
    func charactersByRemovingBackspaces() -> [Character] {
        var result = [Character]()
        for char in self {
            guard char != "#" else {
                result = result.dropLast()
                continue
            }
            result.append(char)
        }
        return result
    }
    
}
