//  Created by Mikhail Dudarev on 28.05.2022.

extension String {
    
    func asciiValues() throws -> [UInt8] {
        try map {
            guard let asciiValue = $0.asciiValue else {
                throw Failure.notAnAsciiCharacter
            }
            return asciiValue
        }
    }
    
}

extension String {
    
    enum Failure: Error {
        case notAnAsciiCharacter
    }
    
}
