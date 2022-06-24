//  Created by Mikhail Dudarev on 24.06.2022.

import Foundation

extension Character {
    
    private static let latinLowercaseStartAsciiValue = Character("a").asciiValue!
    
    func latinLowercaseIndex() -> Int? {
        guard let asciiValue = asciiValue else {
            return nil
        }
        return Int(asciiValue - Self.latinLowercaseStartAsciiValue)
    }
    
}
