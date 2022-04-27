//  Created by Mikhail Dudarev on 27.04.2022.

extension Int {
    
    var digits: [Int] {
        guard self != .zero else {
            return [.zero]
        }
        var result = [Int]()
        var number = self
        while number > .zero {
            let lastDigit = number % 10
            number = number / 10
            result.insert(lastDigit, at: .zero)
        }
        return result
    }
    
}
